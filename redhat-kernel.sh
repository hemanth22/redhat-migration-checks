kernel_file="/boot/vmlinuz-$(uname -r)"
patch_date=$(stat -c %y "$kernel_file")
echo "Kernel Version: $(uname -r)"
echo "Kernel All details: $(uname -a)"
echo "Kernel Patch Date: $patch_date"