#!/bin/bash

read -p " What is your name ?  " name
read -p " How old are you  ?  " age
read -p " Average life expectancy " ale

if [[ $age  -lt 18 ]]
then
x=18-$age

echo " Hello $name You are a student"
echo "At least $((x))  years to become a worker." # (X = 18 - age)
elif [[ $age -ge 18  &&  $age -lt 65 ]]
then
y=65-$age
echo "Hello $name You are Worker"
echo  "$((y))  years to retire." # (X = 65 - age)
elif [[ $age -lt  $ale  ]]
then
z=$ale-$age
echo " Hello $name You are retired"
echo "$((z))  years to die." # (X = ale - age)
else
 # beep sound
echo -ne '\007'
echo "!!! Already died !!!"
# wait 1 sec.
echo "!!! Already died !!!"
# wait 2 secs.
echo "!!! Already died !!!"
fi
