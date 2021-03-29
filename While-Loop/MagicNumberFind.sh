#!/bin/bash -x

echo -e "Think a number between 1 to 100"

a=0
b=100
i=0
mid=$(( ($a+$b)/2 ))
while [ $i -lt 30 ]
do
	echo -e "Enter g if n>$mid   OR   Enter s if n<$mid    OR   Enter y if n=$mid"
	read ans

	mid=$(( ($a+$b)/2 ))
	case $ans in

		"g")
			a=`echo "($a+$b)/2"|bc`
			mid=`echo "($a+$b)/2"|bc`
			;;

		"s")
			b=`echo "($a+$b)/2"|bc`
			mid=`echo "($a+$b)/2"|bc`
			;;

	  	"y")
			echo "The Magic number is $mid"
			break
			;;
	esac
done
