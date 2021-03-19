#!/bin/bash -x
echo "Welcome to Case - esac statement shell scripting"
sleep 2
echo -e "Enter a single digit number = \c "
read num

case "$num" in
	"1")	echo "number in words = One"
	;;

	"2") echo "number in words = Two"
	;;

	"3") echo "number in words = Three"
	;;

	"4") echo "number in words = Four"
	;;

	"5") echo "number in words = Five"
	;;

	"6") echo "number in words = Six"
	;;

	"7") echo "number in words = Seven"
	;;

	"8") echo "number in words = Eight"
	;;

	"9") echo "number in words = Nine"
	;;

	"0") echo "number in words = Zero"
	;;

esac









