#!/bin/bash

case "$1" in
  "-u"| "--url")
    grep -Eo "https:\/\/([[:alnum:]]|\.|\/)+" $2
    ;;
  "-e" | "--email")
    grep -Eo  "[[:alnum:]]+\@[[:alpha:]]+\.[[:alpha:]]+" $2
    ;;
esac

