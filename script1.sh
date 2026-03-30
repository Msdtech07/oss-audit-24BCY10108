#!/bin/bash
# Script 1: System Identity Report
# Author: Priyanshu | Reg No: 24BCY10108
# Description: Displays system identity information for the Linux Kernel OSS audit

STUDENT_NAME="Priyanshu"
SOFTWARE_CHOICE="Linux Kernel"
KERNEL=$(uname -r)
ARCH=$(uname -m)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATETIME=$(date '+%A, %d %B %Y at %H:%M:%S')

if [ -f /etc/os-release ]; then
    DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d'=' -f2 | tr -d '"')
else
    DISTRO="Unknown Distribution"
fi

echo "========================================="
echo "  Open Source Audit — $STUDENT_NAME"
echo "  Software: $SOFTWARE_CHOICE"
echo "========================================="
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "Architecture : $ARCH"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date/Time    : $DATETIME"
echo ""
echo "Licence Note : The Linux Kernel is licensed under the GNU General"
echo "              Public Licence version 2 (GPL v2). This means the"
echo "              kernel source code is freely available for study,"
echo "              modification, and redistribution under the same terms."
echo "========================================="


