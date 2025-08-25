#!/bin/bash
# Script: Info-SIstema.sh
# Basic description of the Linux system

echo "--------------------------------"
echo " System report - $(date) "
echo "--------------------------------"

# Temp On
echo -e "\n * Temp On: "
uptime -p

# Memory usage
echo -e "\n * Memory usage: "
free -h | awk 'NR==1 || NR==2 {print $0}'

#CPU
echo -e "\n * CPU information: "
lspcu | grep "Model name"

# Disk space
echo -e "\n * Disk space: "
df -h --total | grep total

echo -e "\n End of report."
