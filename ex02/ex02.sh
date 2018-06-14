#!bin/bash

line=$( echo $1 | tr " " "\n" )
for i in $line
do
  ls -R | grep -Fi $i || echo "the searched PATH is unexisting"
done

