#!/bin/bash

# Here we will be declare the base directory where we want to store the our backup
BASE_DIR="/home/purushotam/Desktop/Backup"

# Here we will create the daily folder to store the daily backup
DAILY_DIR="$BASE_DIR/daily"
mkdir -p "$DAILY_DIR"

# Now we declare the function to perform the backup
perform_daily_backup() {
    SOURCE_DIR="/home/purushotam/Desktop/Hello_World"
    TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
    DESTINATION_DIR="$DAILY_DIR/$TIMESTAMP.zip"  # We  Use .zip extension for the zip archive
    
    # Print the source and destination paths
    echo "Backing up from: $SOURCE_DIR"
    echo "Backing up to  : $DESTINATION_DIR"
    
    # Perform the backup by creating a zip archive
    zip -r "$DESTINATION_DIR" "$SOURCE_DIR"

     # Pass the destination directory to the weekly script
    /home/purushotam/Desktop/Shell_Scripts/weekly_backup.sh "$DAILY_DIR"

}

 
   

# Perform the first five backups every 3  hours because in requirement there we have to backup the file 7 times in a day so here i created the 5 backup with interval of 3 hours and 2 backup with the interval of 4 hours

for ((i=1; i<=5; i++)); do
    perform_daily_backup
    sleep 3h
done

# Perform the last two backups every 2 minutes
for ((i=6; i<=7; i++)); do
    perform_daily_backup
    sleep 4h
done

