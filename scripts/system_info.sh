#!/bin/bash
# Script 1: System Information Script
# Displays basic info about the Linux system

echo "========================================"
echo "       SYSTEM INFORMATION REPORT        "
echo "========================================"
echo "Username       : $(whoami)"
echo "Hostname       : $(hostname)"
echo "System Uptime  : $(uptime -p)"
echo "Kernel Version : $(uname -r)"
echo "OS Description : $(lsb_release -d | cut -f2)"
echo "Current Time   : $(date)"
echo "========================================"
echo "Report generated successfully."
