#!/bin/bash

# Variables

source_dir="/root/backup"
log_file="backup.log"
remote_host="root@192.168.1.15"
remote_dir="/root/"

# Function to perform the backup

perform_backup() {
	rsync -avz "$source_dir" "$remote_host":"$remote_dir" > "$log_file" 2>&1

	if [ $? -eq 0 ];
	then
		echo "Backup Successfull: $(date)" >> "$log_file"
	else
		echo "Backup Failed: $(date)" >> "$log_file"
	fi

}

# Script Body

perform_backup

