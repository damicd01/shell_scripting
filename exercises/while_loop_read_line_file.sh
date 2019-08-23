#!/usr/bin/env bash

#Simple script to read each line of /etc/hosts

LINE_NUMBER=1
while read LINE
do
  echo ${LINE_NUMBER}: ${LINE}
  ((LINE_NUMBER++))
done < /etc/hosts
