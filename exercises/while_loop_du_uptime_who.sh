#!/usr/bin/env bash

#Simple script to show disk usage, uptime or who is logged in

while true
do
  read -p "Enter 1 for disk usage, Enter 2 for uptime, Enter 3 for who is logged on " CHOICE
  case ${CHOICE} in
    1)
    df -h
    echo ''
    ;;
    2)
    uptime
    echo ''
    ;;
    3)
    who
    echo ''
    ;;
    q)
    echo 'Goodbye'
    break
    ;;
    *)
    echo "I didn't understand that - please check your input"
    continue
    ;;
  esac
done
