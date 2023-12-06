# Backup Script for Daily, Weekly, and Monthly Tasks

## Overview

This versatile backup script automates the process of creating daily, weekly, and monthly backups for efficient data management. With features like automated scheduling, incremental backups, and flexible configuration, it offers a robust solution to ensure the protection of critical data.

## Key Features

1. **Automated Scheduling:**
   - Set up automated schedules for daily, weekly, and monthly backups.
   - Ensure consistent and timely data protection without manual intervention.

2. **Incremental Backups:**
   - Optimize storage space with incremental backups.
   - Capture only changes since the last backup, reducing backup time and resource usage.

3. **Flexible Configuration:**
   - Easily configure the script to include specific directories, files, or databases in the backup.
   - Adapt the script to the unique data storage needs of your system.

4. **User-Friendly Interface:**
   - Intuitive interface for easy modification of settings, monitoring of progress, and retrieval of information from logs.
   - Simplify the backup management process.

## Usage

1. **Configuration:**
   - Edit the script to set up the desired backup locations, schedules, and retention policies.

2. **Execution:**
   - Run the script manually or set up scheduled tasks using system tools like cron jobs.

3. **Monitoring:**
   - Regularly check logs for insights into the backup process.
   - Set up notifications for real-time alerts.

## Getting Started
1.  **Here we have the three files:**
       - daily_backup.sh
       - weekly_backup.sh
       - monthly_backup.sh
       - we will discuss in detail for every files

2. Clone or download the repository:
      ```bash
   https://github.com/PurushotamSharma/Backup_Shell_Script.git

3. Customize the script according to your backup requirements.

4. Ensure necessary permissions for  daily backup execution:
      ```bash 
   chmod +x backup_daily.sh
   chmod +x weekly_backup.sh
   chmod +x monthly_backup.sh

5. After giving Permissions you can execute the script one by one

  
## Statement  of the Project
We have to write a script that takes 7 times backup daily  and one latest backup file have to move to weekly directory and after 7 days we have 7 backup file in weekly folder after it we have to write script for monthly backup that takes backup on the Monday so at the end of month we have 4 files in that directory.
This is our project statement...

My Assumption for creating the backup file is that  I have created one script for the daily backup that execute 7 times per day as a requirement. So there are 5 backups files with 3 hours time interval and 2 files for 4 hours interval because we have to create 7 backup files. 
After this I move the latest files of the day to the weekly directory and at the last I created a monthly backup script that will execute every monday.

For scheduling I used the Cron Job.

## Contributing

Contributions are always welcome!

See `contributing.md` for ways to get started.


## Feedback

If you have any feedback, please reach out to us at sharmapurushotam57@gmail.com

## License

[MIT](https://choosealicense.com/licenses/mit/)






