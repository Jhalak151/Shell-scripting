#!/bin/bash

#removing empty lines from quotes.txt

clear

grep -v '^$' quotes.txt > temp.txt
mv temp.txt quotes.txt 