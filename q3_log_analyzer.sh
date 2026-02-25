#!/bin/bash
# Q3 - Log File Analyzer Script
# This script analyzes a given log file and provides:
#   - Total number of lines
#   - Number of error entries
#   - Number of warning entries
#   - Top 5 most frequently occurring words
# The script first checks whether the file exists
# before performing any analysis.
echo "========== Log File Analyzer =========="
# Ask user for log file name
echo "Enter log file name:"
read logfile
# Check if file exists
if [ ! -f "$logfile" ]; then
    echo "Error: File does not exist."
    exit 1
fi
echo ""
# Display total number of lines in file
echo "Total Lines in Log File:"
wc -l "$logfile"
echo ""
# Count number of lines containing the word 'error' (case-insensitive)
echo "Total Error Entries:"
grep -i "error" "$logfile" | wc -l
echo ""
# Count number of lines containing the word 'warning' (case-insensitive)
echo "Total Warning Entries:"
grep -i "warning" "$logfile" | wc -l
echo ""
# Display top 5 most common words in the log file
echo "Top 5 Most Frequent Words:"
tr -s ' ' '\n' < "$logfile" | sort | uniq -c | sort -nr | head -5
echo ""
echo "========== Analysis Complete =========="


