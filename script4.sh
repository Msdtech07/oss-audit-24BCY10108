
#!/bin/bash
# Script 4: Log File Analyzer
# Author: Priyanshu | Reg No: 24BCY10108
# Usage: ./script4_log_analyzer.sh <logfile> [keyword]

LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword is 'error' if not provided
COUNT=0

if [ -z "$LOGFILE" ]; then echo "Usage: $0 <logfile> [keyword]"; exit 1; fi
if [ ! -f "$LOGFILE" ]; then echo "Error: '$LOGFILE' not found."; exit 1; fi
if [ ! -s "$LOGFILE" ]; then echo "Warning: '$LOGFILE' is empty."; exit 0; fi

echo "Analysing : $LOGFILE"
echo "Keyword   : $KEYWORD"
echo "-------------------------------------------"

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT time(s) in $LOGFILE"
echo ""
if [ $COUNT -gt 0 ]; then
    echo "Last 5 matching lines:"
    echo "-------------------------------------------"
    grep -i "$KEYWORD" "$LOGFILE" | tail -5
fi

