#!/bin/bash
echo "===== User Account Security Report ====="
echo ""
echo "1. List of All Users:"
cut -d: -f1 /etc/passwd
echo ""
echo "2. Currently Logged-in Users:"
who
echo ""
echo "3. Users with UID 0 (Root Privileges):"
awk -F: '$3 == 0 {print $1}' /etc/passwd
echo ""
echo "4. Sudo Users:"
getent group sudo | cut -d: -f4
echo ""
echo "5. Failed Login Attempts (last 10):"
sudo journalctl _COMM=sshd | grep "Failed password" | tail -n 10


