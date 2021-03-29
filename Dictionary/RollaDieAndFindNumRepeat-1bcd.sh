#!/bin/bash -x

echo -e "Enter a number to check its repitation 10 times:\c"
read z
j=0
declare -A rolls

for ((i=0; i<=50; i++))
do
	dicenum=$((1 + ((RANDOM%6))))
	rolls[$i]="$dicenum"

		if [ $dicenum == $z ]
			then
				j=$(($j + 1))

				if [ $j -eq 10 ]
				then
					echo ${rolls[@]}
					echo "number $z occured 10 times"
				break
			fi
		fi
done

if [ $j -ne 10 ]
then
	echo "Sorry,Number $z repeated less than 10 times"
fi
