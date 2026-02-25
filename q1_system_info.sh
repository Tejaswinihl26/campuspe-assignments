#!/bin/bash
echo "===== System Information ====="
echo "Hostname:"
hostname
echo "Current User:"
whoami
echo "Operating System:"
lsb_release -a
echo "Uptime:"
uptime
echo "Disk Usage:"
df -h
echo "Memory Usage:"
free -h

