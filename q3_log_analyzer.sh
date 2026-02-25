#!/bin/bash

echo "===== Log File Analyzer ====="

echo "Enter log file name:"
read logfile

if [ ! -f "$logfile" ]; then
    echo "File does not exist!"
    exit 1
fi

echo ""
echo "Total Lines:"
wc -l "$logfile"

echo ""
echo "Total Errors:"
grep -i "error" "$logfile" | wc -l

echo ""
echo "Total Warnings:"
grep -i "warning" "$logfile" | wc -l

echo ""
echo "Top 5 Most Common Words:"
tr -s ' ' '\n' < "$logfile" | sort | uniq -c | sort -nr | head -5

