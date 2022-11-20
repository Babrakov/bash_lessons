#!/bin/bash


#Сначала var=`program`, затем if [[ $var -eq 0 ]]

var=`pwd`
#echo $?

#Сначала запустить program, затем if [[ $? -eq 0 ]]

#if [[ `pwd` -eq 0 ]]
#then
# echo "qq"
#fi

if `cp test.sh 2.txt > some_file.txt`
then
 echo "qq"
fi
