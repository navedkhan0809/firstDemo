#!/bin/bash -x

counter=0

for ((i=1; i<=10; i++))
do
	arr[((counter++))]="$((($RANDOM%889) + 100))"
done

echo ${arr[@]}
echo -e "The second largest number=\c"
printf '%s\n' "${arr[@]}" | sort -n|tail -2|head -1

echo -e "The second smallest number=\c"
printf '%s\n' "${arr[@]}" | sort -n|head -2|tail -1
