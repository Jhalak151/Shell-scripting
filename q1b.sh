#!/bin/bash

#removing duplicate lines from quotes.txt

clear

cat -n quotes.txt | sort -uk2 | sort -nk1 | cut -f2- > temp.txt
mv temp.txt quotes.txt