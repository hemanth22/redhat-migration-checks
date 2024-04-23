#!/bin/bash

# File to store the HTML report
report_file="system_report.html"

# Commands to get system information
uname_info=$(uname -r)
df_info=$(df -hT)
redhat_release=$(cat /etc/redhat-release)

# Generating HTML report using awk
cat << EOF > "$report_file"
<!DOCTYPE html>
<html>
<head>
<title>System Report</title>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  padding: 10px;
}
th {
  background-color: #f2f2f2;
}
</style>
</head>
<body>

<h2>System Information Report</h2>

<h3>Kernel Version</h3>
<p>$uname_info</p>

<h3>Filesystem Information</h3>
<table>
  <tr>
    <th>Filesystem</th>
    <th>Type</th>
    <th>Size</th>
    <th>Used</th>
    <th>Available</th>
    <th>Use%</th>
    <th>Mounted on</th>
  </tr>
$(echo "$df_info" | awk 'NR>1 {print "<tr>"; for(i=1;i<=NF;i++) print "<td>"$i"</td>"; print "</tr>"}')
</table>

<h3>Operating System Release</h3>
<p>$redhat_release</p>

</body>
</html>
EOF

# Sending email with the report
mail -s "System Report" your_email@example.com < "$report_file"
