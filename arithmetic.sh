#!/bin/bash -x

echo "Welcome"
declare -A computation
#UC-1

read -p "Enter first number" a;
read -p "Enter second number" b;
read -p "Enter third number" c;
 
#UC-2

operation1=$((a+b*c))
echo $operation1

#UC-3

operation2=$((a*b+c))
echo $operation2

#UC-4

operation3=`awk "BEGIN {print ($c + $a)/$b }"`
echo $operation3

#UC-5

operation4=`awk "BEGIN {print ($a % $b)+$c }"`
echo $operation4

#UC-6

computation[1]="$operation1"
computation[2]="$operation2"
computation[3]="$operation3"
computation[4]="$operation4"

echo  "store the result in dictionary "${computation[@]}

#UC-7

count=0
for((i=1; i<=4; i++))
do
	compute[((count++))]=${computation[$i]}
done
echo "Reading value from dictionary from array" ${compute[@]}

#UC-8

decending=$(printf '%s\n' "${compute[@]}" | sort -nr )

echo "Result in the decending order" ${decending[@]}

#UC-9

ascending=$(printf '%s\n' "${compute[@]}" | sort -n )

echo "Result in the ascending order" ${ascending[@]}

