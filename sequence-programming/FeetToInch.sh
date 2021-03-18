#!/bin/bash -x

echo "Hello,please choose option number..."
sleep 2
echo "1. for foot to inches"
echo "2. for inches to foot"
read value
if [ $value == 1 ]
then
	echo Enter foot value
	read foot

	inches=$(($foot*12))

	echo "$foot ft = $inches inch"

else
	echo Enter inches value
	read inches
	foot=$(($inches/12))
	echo "$inches inch = $foot ft"

fi
