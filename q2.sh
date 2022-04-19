#!/bin/bash

#formatting lines in quotes.txt

cat quotes.txt | while read line;
do
    echo $line | awk -F"~" '{print $2 " once said, \"" $1}' | sed 's/.$//' | sed 's/$/\"/' | cat >> speech.txt
done