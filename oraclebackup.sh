#!/bin/bash
#This script backs up the Oracle DB every night

rm -f /remoteserver/backup-oracle*

if tar -zcvf /remoteserver/backup-oracle-`date +%F`.tar.gz /oracledb/*
  then
  echo "Oracle backup completed on `date`" >>/var/log/oraclebackuplog 

  else
  echo "Oracle backup failed on `date`" >>/var/log/oraclebackuplog
  mail -s BACKUP FAILED jason.eckert@trios.com </var/log/oraclebackuplog
fi
