#!/bin/bash

# Program to find maximum of three number provided as command line argument.
if [ "$1" -gt "$2" ]; then
	if [ "$1" -gt "$3" ]; then
		printf "$1 is maximum."
	else
		printf "$3 is maximum."
	fi
else
	if [ "$3" -gt "$2" ]; then
		printf "$3 is maximum."
	else
		printf "$2 is maximum."
	fi
fi