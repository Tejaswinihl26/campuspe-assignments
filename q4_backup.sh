#!/bin/bash
echo "===== Backup Script ====="
echo "Enter directory to backup:"
read source
# Check if directory exists
if [ ! -d "$source" ]; then
    echo "Directory does not exist!"
    exit 1
fi
# Create timestamp
timestamp=$(date +"%Y%m%d_%H%M%S")
# Create backup folder name
backup_dir="backup_$timestamp"
# Create backup folder
mkdir "$backup_dir"
# Copy files
cp -r "$source"/* "$backup_dir"
echo "Backup completed successfully!"
echo "Backup folder created: $backup_dir"

