#!/bin/bash -x

echo "Welcome to Coin flip program"
echo "Flipping a coin till either heads or tails wins 11 times...."
sleep 2

i=0
j=0

while [ $i -lt 25 ]
do
	toss=$((RANDOM%2))
	HEADS=1

	if [ $toss -eq $HEADS ]
	then
   	j=$(($j+1))
		if [ $j == 11 ]
		then
			echo You won HEADS 11 times
			exit
		fi
	else
   	k=$(($k+1))
		if [ $k == 11 ]
		then
			echo You won TAILS 11 times
			exit
		fi
	fi

	i=$(($i + 1))
done

