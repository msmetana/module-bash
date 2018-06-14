#!/bin/bash

if [ -z $1 ]; then
  exit 1
elif [ "$1" -eq 0 ]; then
  exit 1
fi
count=0
num=$1
regex='Q-Chem'
input="resourses/surnames.txt"
while IFS= read -r var
do
  if [[ $count == $num ]]; then
    break
  fi
  let count+=1
  if [[ $var =~ $regex ]]; then
      continue
  fi
  echo $var | sed "s/\-//" | sed "s/\.//"
done < "$input"

