#!/bin/bash

# Simple calculator (add, subtract, multiply and divide two arguments based on the input provided through command line).

if [ "$2" == "/" ]; then
	if [ "$3" == "0" ]; then
		printf "Divide by zero not possible."
	else
		let result=$1/$3
		printf "$result"
	fi
elif [ "$2" == '+' ]; then
	let result=$1+$3
	printf "$result"
elif [ "$2" == '-' ]; then
	let result=$1-$3
	printf "$result"
elif [ "$2" == '*' ]; then
	let result=$1*$3
	printf "$result"
else
	printf "Invalid arguments"
fi