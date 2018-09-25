#!/bin/bash
#This script backs up a directory of your choice

echo -e "What directory do you want to back up?-->\c"
read ANS

echo "Performing backup....."
sleep 3
FILE=`echo $ANS | sed s#/#-#g`
DATE=`date +%F`
tar -zcvf ~/backup-$FILE-$DATE.tar.gz $ANS

echo "Backup completed successfully to ~/backup-$FILE-$DATE.tar.gz" 
