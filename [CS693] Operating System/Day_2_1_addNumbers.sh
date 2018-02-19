#!/bin/bash

# input two numbers
printf "Enter two numbers: "
read num1 num2

# add two numbers and store the result in another number
num3=$[num1+num2]

# you can also do
# num3=$((num1 + num2))
# num3=$(($num1 + $num2))
# num3=`expr $num1 + $num2`

# print the result
printf "Sum is $num3"