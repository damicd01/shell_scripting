#!/usr/bin/env bash

#Simple script that renames all of the jpg files in a given directory to the
#name of the file and today's date.

DATE=$(date '+%Y-%m-%d')
JPGS=$(ls $1/*.jpg | sed -e 's/\.jpg//')

echo ${JPGS}

for ITEM in ${JPGS}; do
  if [[ $ITEM =~ $DATE ]]; then
    echo 'already done'
  else
    echo 'renaming' $ITEM 'to' ${ITEM}_${DATE}.jpg
    mv $ITEM.jpg ${ITEM}_${DATE}.jpg
  fi
done
ls $1/*.jpg
