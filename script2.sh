#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Akshat Kumar (24BSA10201)

PACKAGE=${1:-"vlc"} # Takes an argument, defaults to vlc if none provided

# Check if package is installed (using rpm for RedHat/Fedora/CentOS)
# Note: Change 'rpm -q' to 'dpkg -s' and 'rpm -qi' to 'dpkg -s' if using Ubuntu/Debian
if rpm -q "$PACKAGE" &>/dev/null; then
    echo "$PACKAGE is installed."
    # Print Version, License, and Summary
    rpm -qi "$PACKAGE" | grep -E 'Version|License|Summary'
else
    echo "$PACKAGE is NOT installed."
fi

echo "----------------------------------------"
# Case statement that prints a philosophy note based on package name
case "$PACKAGE" in
    httpd|apache2) 
        echo "Apache: the web server that built the open internet" 
        ;;
    mysql) 
        echo "MySQL: open source at the heart of millions of apps" 
        ;;
    vlc)
        echo "VLC: built by students in Paris, plays absolutely anything"
        ;;
    firefox)
        echo "Firefox: a non-profit champion fighting for an open web"
        ;;
    python|python3)
        echo "Python: a language shaped entirely by a collaborative community"
        ;;
    *)
        echo "$PACKAGE: A valuable part of the broader open-source ecosystem."
        ;;
esac
