#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Priyanshu | Reg No: 24BCY10108

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/boot")

echo "Directory Audit Report — $(date '+%d %B %Y')"
echo "---------------------------------------------------------------"
printf "%-20s %-8s %-12s %-10s %-6s\n" "Directory" "Size" "Permissions" "Owner" "Group"
echo "---------------------------------------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        printf "%-20s %-8s %-12s %-10s %-6s\n" \
            "$DIR" "${SIZE:-N/A}" "$PERMS" "$OWNER" "$GROUP"
    else
        echo "$DIR does not exist on this system."
    fi
done

echo ""
echo "--- Linux Kernel Module Directory Check ---"
KERNEL_VER=$(uname -r)
MOD_DIR="/lib/modules/$KERNEL_VER"
if [ -d "$MOD_DIR" ]; then
    echo "Kernel module directory found: $MOD_DIR"
    PERMS=$(ls -ld "$MOD_DIR" | awk '{print $1, $3, $4}')
    echo "Permissions/Owner: $PERMS"
    MOD_COUNT=$(lsmod | tail -n +2 | wc -l)
    echo "Currently loaded kernel modules: $MOD_COUNT"
fi
