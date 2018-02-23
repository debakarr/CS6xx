#!/bin/bash

# input number
printf "Enter the number you want to check for prime: "
read num

prime(){
	local num=$1

	# if number is equal to 2 then it's prime
	# if that then print that number is prime and exit
	if [ "$num" -eq 2 ]; then
		printf "$num is Prime."
		exit
	fi

	# check if number is divisible by 2 
	# if yes then its not prime
	if [ $[num % 2] -eq 0 ]; then
		printf "$num is not Prime."
		exit
	else
		# starting from 3 check for each odd number either it divides number/2 or not
		i=3
		while [ $i -lt $[num / 2] ] 
		do
			if [ $[num % i] -eq 0 ]; then
				# if divides then it's not prime
				printf "$num is not Prime."
				exit
			fi
			i=$[i+2]
		done
	fi

	# if nothing divides number/2 then its prime
	printf "$num is Prime."
}

prime $num