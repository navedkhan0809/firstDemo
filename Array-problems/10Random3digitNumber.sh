#!/bin/bash -x

counter=0

	for ((i=0; i<=9; i++))
	do
		Random[((counter++))]="$((($RANDOM%889) + 100))"
	done

echo ${Random[@]}
printf '%s\n'  "${Random[@]}"|sort

min1=${Random[0]}
max1=${Random[0]}
min2='unset'
max2='unset'

z=0
for (( i=$z; i<=9; i++ ))
do

	if [[ ${Random[$i]} -lt $min1 ]]
		then
			min2=$min1
			min1=${Random[$i]}
	elif [[ ${Random[$i]} != $min1 ]] && { [[ "$min2" == "unset" ]] || [[ ${Random[$i]} -lt $min1 ]]; }
		then
			min2=${Random[$i]}
	fi


	if [[ ${Random[$i]} -gt $max1 ]]
	then
		max2=$max1
		max1=${Random[$i]}
	elif [[ ${Random[$i]} != $max1 ]] && { [[ "$max2" == "unset" ]] || [[ ${Random[$i]} -gt $max2 ]]; }
	then
		max2=${Random[$i]}
	fi

done

#min1=$min1
#max1=$max1
#min2=${Random[0]}
#max2=${Random[0]}
#for (( j=$z; j<=9; j++))
#do
#	if [[ ${Random[$i]} -gt $min1 ]]
#	then
#		min2=${Random[$i]}
#	fi
#
#	if [[ ${Random[$i]} -lt $max1 ]]}
#	then
#		max2=${Random[$i]}
#	fi
#done

echo "Smallest number is $min1"
echo "Greatest number is $max1"
echo "Second smallest number is $min2"
echo "Second greatest number is $max2"
