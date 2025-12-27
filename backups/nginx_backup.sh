#!/bin/bash

DATE=$(date +%F)
BACKUP_FILE="/backups/nginx_backup_$DATE.tar.gz"
LOG_FILE="/backups/nginx_verify.log"

tar -czf $BACKUP_FILE /etc/nginx /usr/share/nginx/html

echo "Backup created on $DATE" >> $LOG_FILE
tar -tzf $BACKUP_FILE >> $LOG_FILE
echo "----------------------------------" >> $LOG_FILE
