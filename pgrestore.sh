#!/bin/bash

CONF_NAME=$1
FILENAME=$2
source conf/$CONF_NAME.sh

PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/postgres/bin:/usr/local/pgsql/bin
DATE=`date +%Y-%m-%d`
DOW=`date +%A`
BACKUPFILE="$BACKUPDIR/$FILENAME"

pg_restore -h $HOST -p $PORT -U $USERNAME -d $DBNAME -c $BACKUPFILE --no-owner --role=$USERNAME 2>> "$BACKUPFILE.restore.log"
