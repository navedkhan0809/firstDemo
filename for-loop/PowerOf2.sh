#!/bin/bash -x

num1=1

for ((power=$num1; power<=$1; power++))
do
	echo 2^$power|bc
done
