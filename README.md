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

![image](https://github.com/user-attachments/assets/fc76db55-cb86-40dd-a7bd-c06a95afead6)


- Actual script to create backup of source directory

![image](https://github.com/user-attachments/assets/8fe4c3f0-eb05-4946-8397-9cc728ab898b)

*5. Deployment Script*
-
- Suppose we're deploying a git branch to some server like websphere. We will first build the WAR/EAR to some location(source) and then deploy it to some location (destination)

- So when we run this script, it will fetch code from git repo (specific branch) and will compile the code in build repo and from there we'll deploy it to target repo
- git pull origin $branch :- to pull code from git repo

![image](https://github.com/user-attachments/assets/8531a1c2-dcf4-41da-8bb3-f5fc53859d7c) 

*6. Monitoring System Resources*
-
- Use while loop to run the command till the condition is true
- We can state disk space, memory and CPU using this script by basic shell commands

![image](https://github.com/user-attachments/assets/b383e7bf-7b38-46b7-9338-49b91376b619)

![image](https://github.com/user-attachments/assets/0b1fecb6-4610-4a34-bc83-8404677146e5)

*7. Parsing and Text Processing*
-
- Requirement :- Read the fields from each line and assigns them to the variables name, age, and profession 

![image](https://github.com/user-attachments/assets/3207997c-6694-46cd-9274-f57854ce970b)

*8. Simple Calculator*
- 
- Use case for add, subtract, multiply and divide

![Uploading image.png…]()




