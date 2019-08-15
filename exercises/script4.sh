#¡/bin/#!/usr/bin/env bash
if [ -e /etc/passwd ]
then
  echo 'shadow passwords are enabled'
fi

if [ -w /etc/passwd ]
then
  echo 'You have permissions to edit /etc/passwd'
else
  echo 'You do NOT have permissions to edit /etc/passwd'
fi
