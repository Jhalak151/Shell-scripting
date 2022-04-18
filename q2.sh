#!/bin/bash

#formatting lines in quotes.txt

cat quotes.txt | while read line || [[ -n $line ]];
do
    B=$( echo $line | cut -d'~' -f2 )
    C=$( echo " once said, \"" )
    D=$( echo $line | cut -d'~' -f1 | sed 's/.$//' | sed 's/.$//')
    E=$( echo "\"." )

    echo $B$C$D$E >> speech.txt
done