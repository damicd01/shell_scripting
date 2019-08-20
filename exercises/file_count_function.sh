#¡/bin/#!/usr/bin/env bash

#Simple script to list how many files in directory - this will be done using a
#funntion

file_count() {
  ls -latr | wc -l
}

file_count
