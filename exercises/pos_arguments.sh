#¡/bin/#!/usr/bin/env bash
if [ -f $1 ]
then
  echo 'its a regular file'
elif [ -d $1 ]
then
  echo 'its a directory'
else
  echo 'its another type of file'
fi

echo 'ls -latr on' $1
ls -latr $1
