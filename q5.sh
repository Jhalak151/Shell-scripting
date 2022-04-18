#!/bin/bash

#reversing a string

read string
echo $string | rev


#reversing a string then shifting each character's ascii value

#revstring=$( echo $string | rev )
len=${#string}

for (( i=len-1; i >= 0; i-- ))
  do
    AscValue=$( printf "%d" "'${string:$i:1}" )
    AscValue=$((AscValue+1))
    echo $AscValue | awk '{printf("%c",$1)}'
  done
echo


#reversing a string then shifting each character's ascii value

len2=$((len/2))

for (( i=$len2-1; i >= 0; i-- ))
  do
    echo ${string:$i:1} | awk '{printf("%c",$1)}'
  done

echo ${string:$len2:len2} | awk '{printf("%s", $1)}'