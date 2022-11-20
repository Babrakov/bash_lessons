#!/bin/bash

while [[ true ]]
do
 read arg1 arg2 arg3

 if [[ $arg1 == "exit" ]]; then
  echo "bye"
  exit
 fi

 if [[ ! -z "$arg3" && "$arg3" != " " && ( "$arg2" == "+" || "$arg2" == "-" || "$arg2" == "*" || "$arg2" == "/" || "$arg2" == "%" || "$arg2" == "**" ) ]]; then
  res=$(( $arg1 $arg2 $arg3 ))
  echo $res
 else
  echo "error"
  exit
 fi

done