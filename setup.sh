#!/bin/bash

if [ "$#" -lt 1 ]
then
  echo "need 1 arg, given 0"
  exit 1
fi

suffix=echo "$1" |cut -d '/' -f 2 |grep 'homework'
if [ "$suffix" != "" ]
then
  echo "homework repo"
else
  echo  "not homework"
fi
