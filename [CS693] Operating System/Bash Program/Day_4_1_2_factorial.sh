#!/bin/bash

printf "Enter the number: "
read num

factorial(){
	f=1
	local num=$1

	while [ "$num" -gt 0 ]; do
	#      ^            ^
	# Spaces, because these are "test-brackets" . . .
		# logic to calculate factorial
		f=$[num*f]
	  	num=$[num-1]
	done

	echo $(( $f ))
}

result=$(factorial $num)

printf "Factorial of $num is $result\n"

