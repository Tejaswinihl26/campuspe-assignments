#!/bin/bash
# Q1 - System Information Display Script
# This script displays basic system information including:
# - Hostname
# - Current logged-in user
# - Operating system details
# - System uptime
# - Disk usage
# - Memory usage
echo "========== System Information =========="
# Display the system hostname
echo ""
echo "Hostname:"
hostname
# Display the current logged-in user
echo ""
echo "Current User:"
whoami
# Display operating system information
echo ""
echo "Operating System Details:"
lsb_release -a
# Display how long the system has been running
echo ""
echo "System Uptime:"
uptime
# Display disk usage in human-readable format
echo ""
echo "Disk Usage:"
df -h
# Display memory usage in human-readable format
echo ""
echo "Memory Usage:"
free -h
echo ""
echo "========== End of Report =========="

