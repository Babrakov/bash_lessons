#!/bin/bash

let nod=0

gcd()
{
  if [[ $1 -eq $2 ]]; then
    nod=$1
  elif [[ $1 -gt $2 ]]; then
    let f=$1-$2
    gcd $f $2
  else
    let s=$2-$1
    gcd $1 $s
  fi
}

again="yes"

while [[ $again == "yes" ]] ; do
  read first second
  if [[ -z $first ]]; then
    again="no"
    echo "bye"
    continue
  fi
  gcd $first $second
  echo "GCD is $nod"
done

