#!/bin/bash

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
grep -wo '[[:alnum:]]\+' $file | cat > temp.txt

cat -n temp.txt | sort -k2 | uniq -cdf1 | sort -nk2 > temp2.txt

cat temp2.txt | while read line;
do
  echo $line | awk '{print "Word: " $3 " - Count of repetition: " $1}' | cat
done

rm temp.txt
rm temp2.txt