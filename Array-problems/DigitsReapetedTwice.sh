#!/bin/bash -x

for ((i=1 ; i<=100; i++))
do
	if [ $(($i%11)) == 0 ]
	then
		a=$i
		arr[(($a))]="$a"
	fi
done

echo ${arr[@]}
