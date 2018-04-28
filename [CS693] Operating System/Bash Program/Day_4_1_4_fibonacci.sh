#!/bin/bash

# input number
printf "Enter the number of terms: "
read num

fibonacci(){
	b1=0
	b2=1
	local num=$1

	# loop to print fibonacci numbers
	printf "Fibonacci sequence: "

	for (( i=0;i<=num-1;i++ ))
	do
		printf "$b1 "
		temp=$((b1+b2))
		b1=$b2
		b2=$temp
	done
	printf "\n"
}

fibonacci $num