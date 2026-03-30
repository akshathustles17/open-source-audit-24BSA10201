#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Akshat Kumar (24BSA10201)

echo "Answer three questions to generate your manifesto."
echo "--------------------------------------------------"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
# Taking your name directly instead of the system username for a cleaner output
USER_NAME="Akshat_Kumar"
OUTPUT="manifesto_${USER_NAME}.txt"

# Compose the paragraph
MANIFESTO="On this day, $DATE, I declare my commitment to the open-source philosophy. My daily workflow relies on community-driven tools like $TOOL, which remind me that true software $FREEDOM comes from transparency and collaboration. Inspired by this ecosystem, my goal is to one day build and share $BUILD so that others may learn, adapt, and grow from my contributions."

# Write to file using echo and >>
echo "Generating manifesto..."
echo "$MANIFESTO" >> "$OUTPUT"

echo "Manifesto saved to $OUTPUT"
echo "--------------------------------------------------"
cat "$OUTPUT"
