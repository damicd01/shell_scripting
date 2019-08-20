#¡/bin/#!/usr/bin/env bash
read -p 'Please enter the name of the file: ' FILE
if [ -f ${FILE} ]
then
  echo 'its a regular file'
elif [ -d ${FILE} ]
then
  echo 'its a directory'
else
  echo 'its another type of file'
fi

echo 'ls -latr on' ${FILE}
ls -latr $FILE
