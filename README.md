# Shell_Projects

*1. Archive Older/Large Files*
-
_*Requirement of Project*_
-
- In our directory, if the files are of more than a particular size or older than particular no. of days, compress those files and move them in a "archive" folder
- If our disk/server is of particular capacity and our application is printing logs regularly in that disk, that disk/mount point will get filled. So we need to delete the older/large files. We can also archive the files instead of deleting.

_*Steps of Script*_
- 
- Provide path of directory
- Check if the directory is present or not
- Create 'archive' folder if not present
- Find files with more than 2MB
- Compress each files
- Move files into 'archive' folder
- Make cron job to run script every day at given time

_*Script Screenshot*_
-
![image](https://github.com/user-attachments/assets/02c118cd-6fe6-4d5e-ba94-5feee9b08d9b)

![image](https://github.com/user-attachments/assets/40d83486-08ab-40fa-b9ee-fff1fd7a69e9)

_*Make Cron*_
-
- Edit the crontab (crontab -e) and add below :- 05 01 * * * /home/mobaxterm/Desktop/shell/archive_project.sh  (So script will run at 1:05 everyday)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------

*2. Monitoring RAM Space*
-
- Provide threshold value for RAM in script so that if RAM gets below that threshold, it will give us alert.

![image](https://github.com/user-attachments/assets/22df84cb-575f-4710-8d0b-11c908c1e064)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------

*3. Monitoring Disk Space and Sending Email Alerts*
-
- To check disk space we use "df -h". Whichever rows we don't want, use "egrep" for them. For specific column values we can use "awk" and to truncate out things we can use "tr -d"

![image](https://github.com/user-attachments/assets/604aa4c2-1c4e-49b2-904f-26b8d595854c)

- Use "mail" command in conjunction with echo to send email alert if space is low. Define "reciepent" list at first

*4. Backup Script*
-
- This script creates a compressed tar archive of the source directory and saves it in the backup directory with a filename that includes the current date and time. After the backup is created, it provides feedback on whether the backup was successful or not.

- Source directory whose backup to be created

![Uploading image.png…]()


- Actual script to create backup of source directory

![image](https://github.com/user-attachments/assets/8fe4c3f0-eb05-4946-8397-9cc728ab898b)


