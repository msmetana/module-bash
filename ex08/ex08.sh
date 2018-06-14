#!/bin/bash

if [ $# -eq "0" ] || [ $# -gt "1" ]; then
  echo "Too many(few) arguments"
  exit 1
fi

v=""
v+=$(grep -o 0 $1 | wc -l)
v+=" zeroes, "
v+=$(grep -o 1 $1 | wc -l)
v+=" ones, "
v+=$(grep -o 2 $1 | wc -l)
v+=" twoes, "
v+=$(grep -o 3 $1 | wc -l)
v+=" threes, "
v+=$(grep -o 4 $1 | wc -l)
v+=" fours, "
v+=$(grep -o 5 $1 | wc -l)
v+=" fives, "
v+=$(grep -o 6 $1 | wc -l)
v+=" sixs, "
v+=$(grep -o 7 $1 | wc -l)
v+=" sevens, "
v+=$(grep -o 8 $1 | wc -l)
v+=" eights, "
v+=$(grep -o 9 $1 | wc -l)
v+=" nines"
echo $v

