#!/bin/bash -x

if [ $1 -gt 8 ]
then
	echo "Input n exeeded i.e. n>8 for 2^n=256"
	exit
fi

num1=1
while [ $num1 -le $1 ]
do
	if [ $1 -lt 9 ]
	then
			echo 2^$num1|bc
			num1=`expr $num1 + 1`
	fi
done


