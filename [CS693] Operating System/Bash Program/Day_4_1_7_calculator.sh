#!/bin/bash

# Simple calculator (add, subtract, multiply and divide two arguments based on the input provided through command line).

calculator(){
	if [ "$2" == "/" ]; then
		if [ "$3" == "0" ]; then
			printf "Divide by zero not possible.\n"
		else
			let result=$1/$3
			printf "$result\n"
		fi
	elif [ "$2" == '+' ]; then
		let result=$1+$3
		printf "$result\n"
	elif [ "$2" == '-' ]; then
		let result=$1-$3
		printf "$result\n"
	elif [ "$2" == '*' ]; then
		let result=$1*$3
		printf "$result\n"
	else
		printf "Invalid arguments\n"
	fi
}

calculator $1 "$2" $3