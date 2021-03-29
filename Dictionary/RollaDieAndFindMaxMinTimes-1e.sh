#!/bin/bash -x

i=0
h=0
j=0
k=0
l=0
m=0
n=0

declare -A rolls

for ((i=0; i<=30; i++))
do
   dicenum=$((1 + ((RANDOM%6))))
   rolls[$i]="$dicenum"

	case $dicenum in
			"1")
				h=$(($h+1))
				;;

			"2")
				j=$(($j+1))
				;;

			"3")
				k=$(($k+1))
				;;

			"4")
				l=$(($l+1))
				;;

			"5")
				m=$(($m+1))
				;;

			"6")
				n=$(($n+1))
				;;
	esac
done
echo "Dice numbers are:"
echo ${rolls[@]}

#array count

count[1]="$h"
count[2]="$j"
count[3]="$k"
count[4]="$l"
count[5]="$m"
count[6]="$n"
echo "number of occurance"
echo ${count[@]}

#printf '%s\n'  "${count[@]}"|sort
q=`printf '%s\n'  "${count[@]}"|sort |tail -1`
echo "number occured maximum times is $q"
#echo ${count[$q]}

r=`printf '%s\n'  "${count[@]}"|sort |head -1`
echo "number occured minimum times is $r"
#echo ${count[$r]}
