#!/bin/bash

# Declare the bash directory
BASE_DIR="/home/purushotam/Desktop/Backup"

# Weekly backup directory
WEEKLY_DIR="$BASE_DIR/weekly"

# Monthly backup directory
MONTHLY_DIR="$BASE_DIR/monthly"
mkdir -p "$MONTHLY_DIR"

# Function to move the latest weekly backup to the monthly directory
move_to_monthly() {
    # Move the latest weekly backup to the monthly directory
    latest_backup=$(ls -t "$WEEKLY_DIR" | head -n 1)

    if [ -n "$latest_backup" ]; then
        # Create a zip file for the latest backup
        zip -r "$MONTHLY_DIR/$latest_backup.zip" "$WEEKLY_DIR/$latest_backup"
        
        # Print the moved file path
        echo "Moved to monthly: $MONTHLY_DIR/$latest_backup.zip"
    else
        echo "No backup files found in $WEEKLY_DIR"
    fi
}

# Check if today is Monday
if [ "$(date +%u)" -eq 1 ]; then
    # Execute the move_to_monthly function only on Mondays
    move_to_monthly
else
    echo "Today is not Monday. Monthly backup will not be performed."
fi

