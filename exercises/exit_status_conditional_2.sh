#!/usr/bin/env bash

#Simple script that takes the first positional and checks if a file can be cat'd.

if cat /etc/hosts
then
  echo 'you can cat the file'
  exit 0
else
  echo 'command failed'
  exit 1
fi
