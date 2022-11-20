#!/bin/bash

while [[ true ]]
do
 read arg1 op arg2

 if [[ $arg1 == "exit" ]]; then
  echo "bye"
  exit
 fi

 if [[ ! -z "$arg2" && "$arg2" != " " && ( "$op" == "+" || "$op" == "-" || "$op" == "*" || "$op" == "/" || "$op" == "%" || "$op" == "**" ) ]]; then
  res=$(( $arg1 $op $arg2 ))
  echo $res
 else
  echo "error"
  exit
 fi

done