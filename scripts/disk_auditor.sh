#!/bin/bash
# Script 3: Disk Auditor Script
# Shows disk usage and permissions of key directories

echo "========================================"
echo "         DISK USAGE AUDIT REPORT        "
echo "========================================"

echo ""
echo "--- Overall Disk Usage ---"
df -h

echo ""
echo "--- Home Directory Size ---"
du -sh ~

echo ""
echo "--- Sizes of Key Directories ---"
for DIR in /etc /usr /var /home /tmp; do
    if [ -d "$DIR" ]; then
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "  $DIR  =>  $SIZE"
    fi
done

echo ""
echo "--- Directory Permissions ---"
ls -lhd /etc /usr /var /home /tmp

echo ""
echo "Audit completed."
