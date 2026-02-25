#!/bin/bash
while true
do
    echo "===== File Manager Menu ====="
    echo "1. List Files"
    echo "2. Create File"
    echo "3. Delete File"
    echo "4. Exit"
    echo "Enter your choice: "

    read choice

    case $choice in
        1)
            ls -l
            ;;
        2)
            echo "Enter file name to create:"
            read filename
            touch $filename
            echo "File created!"
            ;;
        3)
            echo "Enter file name to delete:"
            read filename
            rm $filename
            echo "File deleted!"
            ;;
        4)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice!"
            ;;
    esac

    echo ""
done


