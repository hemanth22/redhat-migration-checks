BEGIN {
    print "<br/>"
    print "<h2>Operating System Release</h2>"
}
NR > 0 {
    print "<pre>"$0"</pre>"
}
END {
    print "<br/>"
}