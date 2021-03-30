#!/bin/bash -x

echo Enter three numbers
read m n l

Add[((0))]=$m
Add[((1))]=$n
Add[((2))]=$l

#echo ${Add[@]}

sum=$((${Add[0]} + ${Add[1]} + ${Add[2]}))

if [ $sum == 0 ]
then
	echo "Sum is equals to Zero"
else
	echo "Sum is NOT equals to Zero"
fi
