#!/bin/bash

let var=$1

if [[ $var -eq 0 ]]
then
  echo "No students" 
elif [[ $var -eq 1 ]]
then
  echo "1 student"
elif [[ $var -gt 1 && $var -lt 5 ]]
then
  echo $var" students"
elif [[ $var -ge 5 ]]
then
  echo "A lot of students"
fi