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





