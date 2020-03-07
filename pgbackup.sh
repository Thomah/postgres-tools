#!/bin/bash

SCRIPT_PATH=`dirname $0`
CONF_NAME=$1
source $SCRIPT_PATH/conf/$CONF_NAME.sh

PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/postgres/bin:/usr/local/pgsql/bin
DATE=`date +%Y-%m-%d`
DOW=`date +%A`
FILENAME=$BACKUPDIR/$DATE.$DOW

pg_dump -h $HOST -p $PORT -U $USERNAME -f "$FILENAME.tar" -F t $DBNAME 2>> "$FILENAME.backup.log"
