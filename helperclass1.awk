BEGIN {
    print "<html>"
    print "<body>"
    print "<h1>System Report</h1>"
}
NR > 0 {
    print "<pre>"$0"</pre>"
}
END {
    print "<br/>"
}