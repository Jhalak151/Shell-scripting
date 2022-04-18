#!/bin/bash

#size of file in bytes
#total number of lines in the file
#total number of Words in the file

file=$1

#part a
wc -c < $file

#part b
wc -l < $file

#part c
wc -w < $file

#part d
awk '{print "Line No: " NR " - Count of Words: " NF ""}' $file

#part e
grep -wo '[[:alnum:]]\+' $file | sort | uniq -cd > temp.txt

cat temp.txt | while read line || [[ -n $line ]];
do
  echo $line | awk '{print "Word: " $2 " - Count of repetition: " $1}' | cat
done

rm temp.txt