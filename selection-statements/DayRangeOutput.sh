#!/bin/bash -x

echo "Enter a date between March 20 and june 20"
sleep 2
echo "Enter a valid day..."
read day
echo "Enter month..."
read month

if [ $day -lt 31  ]
then
	if [ $month == "march" -o $month == "april" -o $month == "may" -o $month == "june" ]
		then
			echo "True"
		else
			echo "False"
	fi
else
	echo "Enter valid input day"
fi
