echo "[TASK 1] Get redhat kernel report"
./redhat-kernel.sh > redhat-kernel.txt
cat redhat-kernel.txt | awk -f helperclass1.awk > redhat-report.html
echo "[TASK 2] Get redhat fs report"
./redhat-filesystem.sh > redhat-filesystem.txt
cat redhat-filesystem.txt | awk -f helperclass2.awk >> redhat-report.html
echo "[TASK 3] Get redhat os report"
./redhat-os.sh > redhat-os.txt
cat redhat-os.txt | awk -f helperclass3.awk >> redhat-report.html
echo "[TASK 4] Get redhat uptime report"
./redhat-uptime.sh > redhat-uptime.txt
cat redhat-uptime.txt | awk -f helperclass4.awk >> redhat-report.html
echo "[TASK 5] Get redhat date report"
./redhat-date.sh > redhat-date.txt
cat redhat-date.txt | awk -f helperclass5.awk >> redhat-report.html
echo "[TASK 6] Get redhat generated report"
./redhat-gen.sh > redhat-gen.txt
cat redhat-gen.txt | awk -f helperclass5.awk >> redhat-report.html
./mailer.sh
