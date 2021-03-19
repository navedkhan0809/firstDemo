#!/bin/bash -x

echo "Welcome to case - esac statement shell scripting"
echo -e "Enter a number which is multiple of 10 = \c "
read num

case $num in
	"1")	echo "number in words = Unit"
	;;

	"10")	echo "number in words = Ten"
	;;

	"100")	echo "number in words = Hundred"
	;;

	"1000")	echo "number in words = Thousand"
	;;

	"10000")	echo "number in words = Ten Thousand"
	;;

	"100000")	echo "number in words = One lakh"
	;;

	"1000000")	echo "number in words = Ten lakh"
	;;

	*)	echo "Invalid input"
	;;
esac
