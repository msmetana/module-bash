#!/bin/bash

if  [ ! $1 ]; then
  echo "Hello, World!"
elif [ $1 == "Alice" ]; then
   echo "Hello, Alice!"
elif [ $1 == "Bob" ]; then
  echo "Hello, Bob!"
fi

