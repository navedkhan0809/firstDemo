#!/bin/bash -x

echo "Welcome to Unit Conversion Program"
sleep 2
echo -e " 1.Feet to Inch   2.Feet to Meter \n 3.Inch to Feet   4.Meter to Feet"
echo -e "Enter option number from above: \c"
read num

case $num in
	"1")	echo "You choosed feet to inch conversion"
			echo -e "Enter feet value = \c"
			read feet
			inches=`echo "scale=2;$feet*12"| bc`
			echo "$feet ft = $inches inch"
	;;


	"2")	echo "You choosed feet to meter conversion"
			echo -e "Enter feet value = \c"
			read feet
			meter=`echo "scale=2;$feet*0.3048"| bc`
			echo "$feet ft = $meter m"
	;;


	"3")	echo "You choosed inch to feet conversion"
			echo -e "Enter inch value = \c"
			read inch
			feet=`echo "scale=2;$inch*0.0833333"| bc`
			echo "$inch inch = $feet ft"
	;;

	"4")	echo "You choosed meter to feet conversion"
			echo -e "Enter meter value = \c"
			read meter
			feet=`echo "scale=2;$meter*3.28084"| bc`
			echo "$meter m = $feet ft"
	;;

esac
