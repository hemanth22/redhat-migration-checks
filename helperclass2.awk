BEGIN {
    print "<br/>"
    print "<h2>File System Report</h2>"
}
NR > 0 {
    print "<pre>"$0"</pre>"
}
END {
    print "<br/>"
}