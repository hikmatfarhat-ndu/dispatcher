#!/bin/bash

if [ "$#" -lt 1 ]
then
  echo "need 1 arg, given 0"
  exit 1
fi

suffix=$(echo "$1" |cut -d '/' -f 2 |grep 'homework')
if [ "$suffix" != "" ]
then
  echo $token |gh auth login --with-token
  gh auth status
  gh secret set workflow_token -b $token -R "$1"
else
  echo  "not homework"
  
fi
