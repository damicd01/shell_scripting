#!/usr/bin/env bash

#Simple script that asks user how many lines to read from a files

LINE_NUMBER=0
read -p "How many lines do you want to read? " USER_INPUT
while read LINE
do
  echo ${LINE_NUMBER} ${LINE}
  ((LINE_NUMBER++))
  if [[ ${LINE_NUMBER} -ge ${USER_INPUT} ]]
  then
    break
  fi
done < /etc/hosts
