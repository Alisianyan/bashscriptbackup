#!/usr/local/bin/bash

##Dears, don't touch or remove this file - it is for backup!
DIR=/var/log/mysql
TIMENAME=`date +%d.%m.%Y-%H.%M`
cd $DIR
mkdir $TIMENAME
cd $TIMENAME
BACKUPDIR=`pwd`
MYSQLUSER=""##insert mysql user here
MYSQLPASSWORD=""##insert mysql password here
MYSQLHOST=""##insert mysql host here
db=`mysql -u $MYSQLUSER -p$MYSQLPASSWORD -h MYSQLHOST -Bse 'show databases'`
for n in $db; do
TIMEDUMP=`date '+%T %x'`
mysqldump -u root -pCnnikсZGcbyf3178 $n | gzip -c > "$BACKUPDIR/mysql-$n-$TIMENAME-db.gz"
done
find /var/log/mysql -mtime +10  -exec rm -f {} \;