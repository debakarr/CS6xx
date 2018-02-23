#!/bin/bash

# Program to find maximum of three number provided as command line argument.

maxNumber(){
	if [ "$1" -gt "$2" ]; then
		if [ "$1" -gt "$3" ]; then
			printf "$1 is maximum.\n"
		else
			printf "$3 is maximum.\n"
		fi
	else
		if [ "$3" -gt "$2" ]; then
			printf "$3 is maximum.\n"
		else
			printf "$2 is maximum.\n"
		fi
	fi
}

maxNumber $1 $2 $3