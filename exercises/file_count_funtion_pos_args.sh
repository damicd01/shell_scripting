#¡/bin/#!/usr/bin/env bash

#Simple script to accepts positional arguments in a function then return the
#number of files in each directory.

file_count() {
  for ITEM in $@
  do
    echo ${ITEM}: && ls -latr $ITEM | wc -l
  done
  }

file_count /etc/ /var/ /usr/bin/
