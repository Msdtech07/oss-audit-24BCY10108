
#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Priyanshu | Reg No: 24BCY10108
# Note on aliases: alias kernel='uname -r' creates a shortcut command.
# Defined in ~/.bashrc for persistence across sessions.

echo "======================================"
echo "  OPEN SOURCE MANIFESTO GENERATOR     "
echo "  Linux Kernel Edition                 "
echo "======================================"
echo ""
read -p "1. One open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. One thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "Open Source Manifesto — $DATE" > "$OUTPUT"
echo "Written by: $(whoami)" >> "$OUTPUT"
echo "----------------------------------------" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Every day I rely on $TOOL — a tool built openly and shared freely." >> "$OUTPUT"
echo "To me, freedom means $FREEDOM — and that is what the Linux Kernel represents." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "The Linux Kernel was written in 1991 by a student who could not" >> "$OUTPUT"
echo "afford a proprietary Unix system. He shared it freely, and the world" >> "$OUTPUT"
echo "built the internet, the cloud, and modern computing on top of it." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "GPL v2 ensures that no one can ever take this foundation private." >> "$OUTPUT"
echo "One day I will build $BUILD and release it openly," >> "$OUTPUT"
echo "so someone I will never meet can stand on my shoulders." >> "$OUTPUT"
echo "That is the open source promise. That is my commitment." >> "$OUTPUT"

echo ""
echo "Manifesto saved to: $OUTPUT"
cat "$OUTPUT"
