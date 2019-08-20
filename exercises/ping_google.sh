#!/bin/bash

HOST='www.google.erga'
ping -c1 ${HOST}
if [ $? -ne '0' ]
then
  echo 'host is unreachable'
  exit 1
fi
