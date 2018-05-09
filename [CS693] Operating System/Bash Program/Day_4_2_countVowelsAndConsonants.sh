#!/bin/bash

# Program to count number of vowels and consonants in agiven sentence.
printf "Enter the sentence: "
read line

printf "Number of vowels: "
echo `echo $line  | grep -oi "[aeiou]" | wc -l`

printf "Number of consonants: "
echo `echo $line  | grep -oi "[b-df-hj-np-tv-z]" | wc -l`