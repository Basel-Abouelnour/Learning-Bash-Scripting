#!/bin/bash

# Variables

log_dir="/var/log/myapp"
max_log_size=5000000 #5MB
max_log_age=30 #30 days


# Funcitons 
# function to rotate logs
rotate_logs(){
	for log_file in "$log_dir"/*.log;
	do
		if [ $(stat -c%s "$log_file") -ge $max_log_size ];
		then
			mv "$log_file" "$log_file.$(date +'%Y%m%d')"
			gzip "$log_file.$(date +'%Y%m%d')"
			echo "Log rotated: $log_file"
		fi
	done
}

# functiotn to clean up old logs
clean_old_log(){
	find "$log_dir" -name "*.gz" -mtime +$max_log_age -exec rm {} \;
	echo "Old logs cleaned up"
}

# Script Body
rotate_logs
clean_old_logs
