#!/bin/bash
# Q5 - User Account Security Report Script
# This script generates a basic security report including:
#   - List of all system users
#   - Currently logged-in users
#   - Users with root privileges (UID 0)
#   - Members of sudo group
#   - Recent failed SSH login attempts
echo "========== User Account Security Report =========="
echo ""
echo "1. List of All System Users:"
# Extract usernames from /etc/passwd file
cut -d: -f1 /etc/passwd
echo ""
echo "2. Currently Logged-in Users:"
# Show active logged-in users
who
echo ""
echo "3. Users with Root Privileges (UID 0):"
# Display users whose UID is 0 (root-level access)
awk -F: '$3 == 0 {print $1}' /etc/passwd
echo ""
echo "4. Members of Sudo Group:"
# Display users in sudo group
getent group sudo | cut -d: -f4
echo ""
echo "5. Recent Failed SSH Login Attempts:"
# Use journalctl to check failed SSH login attempts (modern systems)
sudo journalctl _COMM=sshd 2>/dev/null | grep "Failed password" | tail -n 10
echo ""
echo "========== End of Security Report =========="


