#!/bin/bash
# Script 1: System Identity Report
# Author: Akshat Kumar (24BSA10201)
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Akshat Kumar"
REG_NUMBER="24BSA10201"
SOFTWARE_CHOICE="VLC Media Player" # Update to your chosen software if you pick something else

# --- System info ---
# Extracts the OS name from os-release
DISTRO=$(cat /etc/os-release | grep '^PRETTY_NAME' | cut -d= -f2 | tr -d '"')
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date +"%A, %B %d, %Y %T")
LICENSE_MSG="This system is distributed under the GNU GPL and other free software licenses."

# --- Display ---
echo "========================================"
echo "          Open Source Audit             "
echo "========================================"
echo "Student: $STUDENT_NAME ($REG_NUMBER)"
echo "Software: $SOFTWARE_CHOICE"
echo "----------------------------------------"
echo "Distro   : $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Home Dir : $HOME_DIR"
echo "Uptime   : $UPTIME"
echo "Date     : $CURRENT_DATE"
echo "----------------------------------------"
echo "License  : $LICENSE_MSG"
echo "========================================"
