#!/bin/bash

# input two numbers
printf "Enter two numbers: "
read num1 num2

# add two numbers and store the result in another number
add(){
  echo $(( $1 + $2 ))
}

num3=$(add num1 num2) 

# print the result
printf "Sum is $num3"