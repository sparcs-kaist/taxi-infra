#!/bin/bash

S3_PATH ="s3://$AWS_S3_BUCKET_NAME/dump"
TIME=`/bin/date +%d-%m-%Y-%T`
BACKUP_NAME=$TIME.dump.gz
S3_BAKCUP = $S3_PATH/$BACKUP_NAME

echo "Backing up $MONGODB_HOST/$MONGODB_NAME to s3://$AWS_S3_BUCKET_NAME/ on $TIME";

mongodump --host $MONGODB_HOST --db=$MONGODB_NAME --archive=$BACKUP_NAME  --gzip
  && aws s3 cp $BACKUP_NAME $S3_BAKCUP && rm $BACKUP_NAME

echo "Backup success"