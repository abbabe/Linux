#!/bin/bash

# Basic Calculator Shell Script  v1.0
# No floating point format 
# Functions
sum()
{
echo Summation
read -p " Input first number : " Num1
read -p " Input second number :" Num2
let result=Num1+Num2
echo "$result"
}

sub()
{
echo Subtraction
read -p " Input first number : " Num1
read -p " Input second number :" Num2

let result=Num1-Num2
echo "$result"

}

div()
{
echo Division
read -p " Input first number : " Num1
read -p " Input second number :" Num2
let result=Num1/Num2
echo "$result"
}


mul()
{
echo Multiplication
read -p " Input first number : " Num1
read -p " Input second number :" Num2

let result=Num1*Num2
echo "$result"
}

read -p " Select operation  + , - , / , *  input symbol:" count

case "$count" in
   "+")sum
   ;;
   "-")sub
   ;;
   "/")div
   ;;
   "*")mul
   ;;
   *) echo  wrong-operator
esac
