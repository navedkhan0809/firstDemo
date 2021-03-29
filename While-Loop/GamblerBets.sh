#!/bin/bash -x

echo "-----------------Welcome to gambler Bet problem-----------------"
sleep 1
echo "Gambler has Rs 100 initially"
sleep 1
echo "Gambler betting..."
sleep 2
a=100
o=0
p=0
i=0
f=10000
while [ $i -le $f ]
do
	bet=$((RANDOM%2))
	if [ $bet == 0 ]
	then
		o=$(($o+1))
		w=$(($a+1))
		a=$w
			if [ $w == 200 ]
			then
				echo "Gambler reached goal of 200"
				echo "Gambler bet $i times and won $o times"
				break
			fi
	elif [ $bet == 1 ]
	then
		p=$(($p+1))
		l=$(($a-1))
		a=$l
			if [ $l == 0 ]
			then
				echo "Gambler has no money to gamble"
				echo "Gambler bet $i times and lost $p times"
				break
			fi
	else
		echo "Gambler has $a"
	fi
i=$(($i+1))
done


