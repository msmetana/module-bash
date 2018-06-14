#!bin/bash

if [ -z  "$1" ]; then
  exit 1
elif [ -z "$2" ]; then
  exit 1
fi
echo $2 | cut -d"/" -f 2
grep -n "$1" $2 | cut -d : -f 1

