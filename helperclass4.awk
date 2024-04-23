BEGIN {
    print "<br/>"
    print "<h2>Server uptime</h2>"
}
NR > 0 {
    print "<pre>"$0"</pre>"
}
END {
    print "<br/>"
}