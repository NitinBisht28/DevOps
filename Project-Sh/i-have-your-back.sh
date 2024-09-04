#!/bin/bash
##########################################################################
#
# This script is used to create backup for a file or folder provided.
#
# Author: Nitin Bisht / Drake.exe
# Date  : 4/Sep/2024
# Version: 0.01
#
###########################################################################

# giving the source of files or folders to backup
read -p "give path of the file to backup :  " Source

# checking if the Source exists or not!!
if [ ! -e "$Source" ]; then
  echo "Source file/folder doesn't exists"
  exit 1
fi

# giving the destination folder for backups
read -p "give the path to store the backup :  " Destination

# checking if the destination exists or not-->else creating it!!
if [ ! -d "$Destination" ]; then
  echo "Destination directory doesn't exist"
  sleep 1
  echo "creating one:"
  mkdir -p "$Destination"
fi

#  asking for the name of the backup file to be created
read -p "give name for the backup file [without extension] :  " file_name

# creating file for backup.
backup_file="$Destination/$file_name.tar.gz"

# using tar command to  create an archive + compressed version of the source file.
tar -czvf "$backup_file" "$Source"

# checking if the tar command was successfull or not

if [ $? -eq 0 ]; then
  echo "Backup created successfully at $backup_file"
else
  echo "Failed to create backup!!"
  exit 1
fi
