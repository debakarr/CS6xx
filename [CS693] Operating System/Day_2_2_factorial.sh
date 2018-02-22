#!/bin/bash

# input number
printf "Enter the number: "
read num

# set a number to 1
f=1

# store number in temporary variable
temp=$num

while [ "$num" -gt 0 ]; do
#      ^            ^
# Spaces, because these are "test-brackets" . . .
	# logic to calculate factorial
	f=$[num*f]
  	num=$[num-1]
done

# display factorial
printf "Factorial of $temp is $f"