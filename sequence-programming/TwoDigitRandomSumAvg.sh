#!/bin/bash -x

for i in `seq 5`
do
	echo " $(($RANDOM%99)) "
done | awk '{sum+=$1} END{print sum " " sum/5}'

