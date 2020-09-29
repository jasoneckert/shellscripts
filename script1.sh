#!/bin/bash
#This script creates a report of our disk configuration

FILENAME=`hostname`
echo "Disk report saved to $FILENAME.report"

echo -e "\n LVM Configuration: \n\n" >>$FILENAME.report
lvscan >>$FILENAME.report
vgscan >>$FILENAME.report
pvscan >>$FILENAME.report

echo -e "\n\n Partition Configuration: \n\n" >>$FILENAME.report
lsblk >>$FILENAME.report

echo -e "\n\n Mounted Filesystem Usage: \n\n" >>$FILENAME.report
df -hT | grep -v tmp >>$FILENAME.report
