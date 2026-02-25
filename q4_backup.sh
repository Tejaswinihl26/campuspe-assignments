#!/bin/bash
# Q4 - Automated Backup Script with Timestamp
# This script:
#   - Asks the user for a directory to back up
#   - Checks if the directory exists
#   - Creates a new backup folder with current timestamp
#   - Copies all files into the backup folder
echo "========== Backup Script =========="
# Ask user for directory name
echo "Enter directory to back up:"
read source
# Check if the directory exists
if [ ! -d "$source" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi
# Generate timestamp (YearMonthDay_HourMinuteSecond format)
timestamp=$(date +"%Y%m%d_%H%M%S")
# Create backup folder name using timestamp
backup_dir="backup_$timestamp"
# Create the backup directory
mkdir "$backup_dir"
# Copy contents of source directory into backup directory
cp -r "$source"/* "$backup_dir"
echo ""
echo "Backup completed successfully!"
echo "Backup folder created: $backup_dir"
echo "========== Backup Finished =========="

