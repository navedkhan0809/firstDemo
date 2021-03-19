#!/bin/bash -x

echo "Welcome to Case - esac statement shell scripting"
sleep 2

echo -e "Please Enter a single digit number from 0 to 6 = \c"
read num

case $num in

	"0")	echo "The week day = Sunday"
	;;

	"1")	echo "The week day = Monday"
	;;

	"2")	echo "The week day = Tuesday"
	;;

	"3")	echo "The week day = Wednesday"
	;;

	"4")	echo "The week day = Thursday"
	;;

	"5")	echo "The week day = Friday"
	;;

	"6")	echo "The week day = Saturday"
	;;

	*)		echo "Invalid input..!!!"
	;;
esac














