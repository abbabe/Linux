#!/bin/bash

# Basic Calculator Shell Script v1.0 Functions


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

let  total=Num1/Num2
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


select  operation in addition subtraction multiplication division exit
do
case "$operation" in
   addition)sum
   ;;
   subtraction)sub
   ;;
   multiplication)mul
   ;;
   division)div
   ;;
   exit)
       break
    ;; 
    *)
       echo "Wrong choice..."
    ;;
esac
done
