#!/bin/bash

# Default source directory
DEFAULT_SOURCE_DIR="/home/purushotam/Desktop/Backup/daily"

# Use the provided source directory or the default
SOURCE_DIR="${1:-$DEFAULT_SOURCE_DIR}"
echo "Source directory: $SOURCE_DIR"

# Set the base backup directory
BASE_DIR="/home/purushotam/Desktop/Backup"

# Create weekly backup directory
WEEKLY_DIR="$BASE_DIR/weekly"
mkdir -p "$WEEKLY_DIR"

# Function to move the latest backup to the weekly directory
move_to_weekly() {
    # Move the latest backup created between 19:00 and 23:00 to the weekly directory
    latest_backup=$(find "$SOURCE_DIR" -type f -name "*.zip" -newermt "$(date +"%Y-%m-%d 19:00:00")" ! -newermt "$(date +"%Y-%m-%d 23:00:00")" | sort | tail -n 1)

    if [ -n "$latest_backup" ]; then
        mv "$latest_backup" "$WEEKLY_DIR"
        # Print the moved file path
        echo "Moved to weekly: $WEEKLY_DIR/$(basename "$latest_backup")"
    else
        echo "No backup files found in $SOURCE_DIR between 19:00 and 23:00"
    fi
}

# Call the function to move the latest backup
move_to_weekly

