#!/bin/bash -x


function f1 () {
	a=$1
	degC=`echo "scale=4 ; ($a - 32)*5/9"|bc`
	echo "$a F = $degC C"
}

function f2 () {
	a=$1
	degF=`echo "scale=4 ; ($a*9/5) + 32"|bc`
	echo "$a C = $degF F"
}


echo -e "Enter Conversion option\n1.degF to degC      2.degC to degF\nEnter option=\c"
read option

case $option in

"1")
	echo -e "Enter degF value =\c"
	read m
	if [ $m -ge 32 -a $m -le 212  ]
	then
		f1 $m
	else
		echo "Enter value range range within Freezing point(32 F) and Boiling poit(212 F) again"
	fi
	;;

"2")
	echo -e "Enter degC value=\c"
	read n
	if [ $n -ge 0 -a $n -le 100 ]
	then
		f2 $n
	else
		echo "Enter value range within Freezing point(0 degC) and Boiling point(100 degC) again"
	fi
	;;

*)
	echo "Invalid input"
	;;
esac
