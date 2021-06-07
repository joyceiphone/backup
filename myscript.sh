#!/bin/bash

#error log
LOGFILE="/home/joyce/Desktop/error.log"

#the directory to backup
BACKUP_DIR=$1

#output filename
FILENAME=$2

#compression algorithm
COMPRESSION=$3

if [ "$#" -ne 3 ]; then
	(echo "number of arguments should be 3") >& $LOGFILE
	echo "program paused"
	exit 1
fi
if [ ! -d $BACKUP_DIR ]; then
	(echo "directory not exist") >& $LOGFILE
	echo "program paused"
	exit 1
fi

mkdir -p "/home/joyce/Desktop/backup"

#where to backup to
DEST="/home/joyce/Desktop/backup"

#archive filename
ARCHIVE_FILE="$FILENAME.$COMPRESSION"

#Backup the directory using tar
if [ $3 != "None" ]; then 
	tar czvf $DEST/$ARCHIVE_FILE $BACKUP_DIR 2>> $LOGFILE
	exit 1
fi

