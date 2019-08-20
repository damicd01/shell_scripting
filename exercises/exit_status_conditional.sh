#!/usr/bin/env bash

#Simple script that accepts a file name as input and returns the following:
# - Exit0 if its a regular file
# - Exit1 if its a directory
# - Exit2 if its another file type

read -p 'Please enter the name of the file: ' FILE
if [ -f ${FILE} ]
then
  echo 'its a regular file'
  exit 0
elif [ -d ${FILE} ]
then
  echo 'its a directory'
  exit 1
else
  echo 'its another type of file'
  exit 2
fi
echo 'exit status '$?
