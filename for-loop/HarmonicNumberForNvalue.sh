#!/bin/bash -x

echo "Welcome to Harmonic series Program (Command line argument)"
sleep 1
num1=1

for ((power=$num1; power<=$1; power++))
do
	if [ $power -lt $1 ]
	then
		echo -e "1/$power + \c"
	else
		echo 1/$power
	fi

done
