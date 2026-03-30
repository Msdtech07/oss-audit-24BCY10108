#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Priyanshu | Reg No: 24BCY10108

PACKAGE=${1:-"linux-image-$(uname -r)"}

if command -v dpkg &>/dev/null; then
    if dpkg -l "$PACKAGE" &>/dev/null; then
        echo "[$PACKAGE] is installed (dpkg)."
        dpkg -l "$PACKAGE" | grep -E '^ii' | awk '{print "Version:", $3}'
    else
        echo "[$PACKAGE] is NOT installed on this system."
    fi
elif command -v rpm &>/dev/null; then
    if rpm -q "$PACKAGE" &>/dev/null; then
        echo "[$PACKAGE] is installed (rpm)."
        rpm -qi "$PACKAGE" | grep -E 'Version|Licence|Summary'
    else
        echo "[$PACKAGE] is NOT installed on this system."
    fi
fi

BASE=$(echo "$PACKAGE" | sed 's/linux-image-.*/linux-kernel/')
case "$BASE" in
    linux-kernel|kernel*)
        echo "Linux Kernel: the foundation everything else runs on."
        echo "Philosophy: GPL v2 ensures every user can study and modify"
        echo "the system they depend on. No black boxes." ;;
    httpd|apache2) echo "Apache: the web server that built the open internet." ;;
    mysql-server|mariadb-server) echo "MySQL/MariaDB: open source at the heart of millions of apps." ;;
    git) echo "Git: Linus built this too, when a proprietary tool failed him." ;;
    python3) echo "Python: one person's holiday project, now global infrastructure." ;;
    *) echo "This is a free and open-source software package." ;;
esac

