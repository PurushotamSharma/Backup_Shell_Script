# Cron Jobs

## Daily Backup Script
### Execute the daily backup script 7 times a day:

 ```cron
0 0,3,6,9,12,15,19,23 * * * /home/purushotam/Desktop/Shell_Script/backup_daily.sh

### Execute the monthly  backup script :

 ```cron
0 2 * * 1 /bin/bash /home/purushotam/Desktop/Shell_Script/monthly_backup.sh

