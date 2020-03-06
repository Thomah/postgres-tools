#!/bin/bash

CONF_NAME=$1
source conf/$CONF_NAME.sh

PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/postgres/bin:/usr/local/pgsql/bin
DATE=`date +%Y-%m-%d`
DOW=`date +%A`
FILENAME=$BACKUPDIR/$DATE.$DOW

dropdb -i -h $HOST -p $PORT -U $USERNAME $DBNAME 2>> "$FILENAME.log" 