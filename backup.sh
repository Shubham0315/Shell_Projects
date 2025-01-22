#!/bin/bash

source_dir="/home/mobaxterm/Desktop/ShellScripts"
backup_dir="/home/mobaxterm/Desktop/ShellScripts/stringManipulation"

backup_filename="backup_$(date +%Y%m%d%H%M%S).tar.gz"

mkdir -p "$backup_dir"

tar -czvf "$backup_dir/$backup_filename" "$source_dir"        # Create the backup using tar

if [ $? -eq 0 ]; then                                        # Check if the backup was successful $? for last command's status
 echo "Backup successful: $backup_filename created in $backup_dir"
else
 echo "Backup failed"
fi
