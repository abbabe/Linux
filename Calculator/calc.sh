#!/bin/bash

# Basic Calculator Shell Script  v1.0
# Functions
sum()
{
echo Summation
read -p " Input first number : " Num1
read -p " Input second number :" Num2
let total=Num1+Num2
echo "$total"
}

sub()
{
echo Subtraction
read -p " Input first number : " Num1
read -p " Input second number :" Num2

let total=Num1-Num2
echo "$total"

}

div()
{
echo Division
read -p " Input first number : " Num1
read -p " Input second number :" Num2
let total=Num1/Num2
echo "$total"
}


mul()
{
echo Multiplication
read -p " Input first number : " Num1
read -p " Input second number :" Num2

let total=Num1*Num2
echo "$total"
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
esac
