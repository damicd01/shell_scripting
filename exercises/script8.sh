#¡/bin/#!/usr/bin/env bash
FILES=$@
for ITEM in ${FILES}
do
if [ -f $ITEM ]
then
  echo 'its a regular file'
elif [ -d $ITEM ]
then
  echo 'its a directory'
else
  echo 'its another type of file'
fi
echo 'ls -latr on' $ITEM
ls -latr $ITEM
done
