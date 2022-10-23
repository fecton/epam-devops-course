#!/bin/bash

backup(){
	echo "Backup started!.."
	date
	echo "-----------------"
	# info
	echo "Location: $dest"
	echo "Log file: /var/log/backup_script.log"
	echo "-----------------"

	# backup process
	echo "Starting tar command..."
	echo $dest $path_to_backup
	tar czf $dest $path_to_backup
	echo "Backup finished"
	date

	echo "-----------------"
	ls -lh $backup_path
	echo "-----------------"
}

path_to_backup="$1"
backup_path="$2"

log_path="$2/backup_script.log"

year=$(date +%G)
month=$(date +%m)
day=$(date +%e)
hours=$(date +%H)
minutes=$(date +%M)
seconds=$(date +%S)

hostname=$(hostname -s)
archive_file="$hostname-$day-$month-$year-$hours-$minutes-$seconds.tgz"

dest="$backup_path/$archive_file"

backup >> $log_path 2>&1
echo "
" >> $log_path

