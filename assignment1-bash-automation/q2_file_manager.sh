#!/bin/bash
# Q2 - Interactive File Manager Script
# This script provides a menu-driven interface that allows
# the user to perform basic file operations in the current
# directory such as:
#   1. Listing files
#   2. Creating a new file
#   3. Deleting an existing file
#   4. Exiting the program
# The script runs in an infinite loop until user exits.
# Infinite loop to keep showing the menu
while true
do
    # Display menu options
    echo ""
    echo "========== File Manager Menu =========="
    echo "1. List Files"
    echo "2. Create File"
    echo "3. Delete File"
    echo "4. Exit"
    echo "Enter your choice: "
    # Read user input
    read choice
    # Use case statement to handle different user options
    case $choice in
        1)
            # Option 1: List all files in current directory
            echo ""
            echo "Files in current directory:"
            ls -lh
            ;;
        2)
            # Option 2: Create a new file
            echo ""
            echo "Enter file name to create:"
            read filename
            # Check if file already exists
            if [ -f "$filename" ]; then
                echo "File already exists!"
            else
                # Create file using touch command
                touch "$filename"
                echo "File created successfully!"
            fi
            ;;
        3)
            # Option 3: Delete a file
            echo ""
            echo "Enter file name to delete:"
            read filename
            # Check if file exists before deleting
            if [ -f "$filename" ]; then
                rm "$filename"
                echo "File deleted successfully!"
            else
                echo "File does not exist!"
            fi
            ;;
        4)
            # Option 4: Exit the script
            echo "Exiting File Manager..."
            break
            ;;
        *)
            # Handle invalid input
            echo "Invalid choice! Please select between 1 and 4."
            ;;
    esac
done
