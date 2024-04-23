./redhat-report.sh > redhat-report.txt
cat redhat-report.txt | awk -f helperclass.awk > redhat-report.html