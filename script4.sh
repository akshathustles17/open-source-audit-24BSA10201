#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4_log.sh /var/log/syslog "error"
# Author: Akshat Kumar (24BSA10201)

LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error'
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Retry logic: Check if file is empty
if [ ! -s "$LOGFILE" ]; then
    echo "Notice: File $LOGFILE is currently empty. Nothing to parse."
    exit 0
fi

# Read line by line
while IFS= read -r LINE; do
    # -i makes grep case-insensitive, -q makes it quiet
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE."

# Print the last 5 matching lines using tail + grep
if [ $COUNT -gt 0 ]; then
    echo "----------------------------------------"
    echo "Last 5 occurrences of '$KEYWORD':"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
