#!/bin/bash

#removing empty lines from quotes.txt

grep -v '^$' quotes.txt > temp.txt
cat temp.txt

mv temp.txt quotes.txt 

#removing duplicate lines from quotes.txt

cat -n quotes.txt | sort -uk2 | sort -nk1 | cut -f2- > temp.txt

mv temp.txt quotes.txt