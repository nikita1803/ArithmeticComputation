#!/bin/bash -x

echo "Welcome"

#UC-1

read -p "Enter first number" a;
read -p "Enter second number" b;
read -p "Enter third number" c;
 
#UC-2

operation1=$((a+b*c))
echo $operation1
