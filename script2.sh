#!/bin/bash
#This script backs up a directory of your choice

if [ $# -ne 1 ]
then 
echo "Usage is $0 <directory to back up>"
exit 255
fi

echo "Performing backup....."
sleep 3
tar -zcvf ~/backupfile.tar.gz $1

echo "Backup completed successfully to ~/backupfile.tar.gz"
