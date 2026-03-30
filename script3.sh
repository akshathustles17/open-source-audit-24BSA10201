#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Akshat Kumar (24BSA10201)

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
# Update this to match your software's config path (e.g., /etc/httpd or ~/.mozilla)
SOFTWARE_CONFIG="$HOME/.config/vlc" 

echo "Directory Audit Report"
echo "======================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, user, and group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Extract human-readable size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "----------------------------------------"
# Check if your software's config directory exists
if [ -d "$SOFTWARE_CONFIG" ]; then
    CONF_PERMS=$(ls -ld "$SOFTWARE_CONFIG" | awk '{print $1, $3, $4}')
    echo "Found config dir! $SOFTWARE_CONFIG => Permissions: $CONF_PERMS"
else
    echo "Config directory $SOFTWARE_CONFIG not found."
fi
