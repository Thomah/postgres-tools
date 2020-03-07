#!/bin/bash

SCRIPT_PATH=`dirname $0`
CONF_NAME=$1
source $SCRIPT_PATH/conf/$CONF_NAME.sh

PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/postgres/bin:/usr/local/pgsql/bin
DATE=`date +%Y-%m-%d`
DOW=`date +%A`
FILENAME=$BACKUPDIR/$DATE.$DOW

dropdb -i -h $HOST -p $PORT -U $USERNAME $DBNAME 2>> "$FILENAME.drop.log" 
