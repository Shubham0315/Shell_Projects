#!/bin/bash

#Variables

PATH=/home/mobaxterm/Desktop/Shubham/Symbiosis  #Where we want to run script
DAYS=10                                         #For files older than 10 days
DEPTH=1                                         #To specify to which level of subdirectories we're performing action
RUN=0

------------------------------------------------------------------------------------------------------------------------------

#Check if the directory is present

if [ ! -d $PATH ]
then
        echo "directory does not exist: $PATH"
        exit 1                                  #Exit status 1 for unseccessful operation
fi

------------------------------------------------------------------------------------------------------------------------------

#Check if "archive" folder is there or not and create if not present

if [ ! -d $PATH/archive ]
then
        mkdir $BASE/archive
fi

------------------------------------------------------------------------------------------------------------------------------

#Find the list of files larger than 20MB

for i in `find $BASE -maxdepth $DEPTH -type f -size +20M` #Find files with size more than 20M, type is only files with depth 1
                                                          # For loop will check files one by one and run action for each file
do
        if [ $RUN -eq 0 ]
        then
                gzip $i || exit 1                # i will zip the 'n' files one by one, if gzip is not done, exit the loop
                mv $i.gz $PATH/archive || exit 1         #move the file to destined folder
        fi
done
                                                   
