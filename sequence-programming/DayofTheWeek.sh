#!/bin/bash -x

echo "Hello"

echo Please enter day...
read day

echo Please enter month...
read month

if [ $month == jan ]
then
month=1
fi

if [ $month == feb ]
then
month=2
fi

if [ $month == mar ]
then
month=3
fi

if [ $month == apr ]
then
month=4
fi

if [ $month == may ]
then
month=5
fi

if [ $month == jun ]
then
month=6
fi

if [ $month == jul ]
then
month=7
fi

if [ $month == aug ]
then
month=8
fi

if [ $month == sep ]
then
month=9
fi

if [ $month == oct ]
then
month=10
fi

if [ $month == nov ]
then
month=11
fi

if [ $month == dec ]
then
month=12
fi

echo Please enter year
read year

d=$day
m=$month
y=$year

y0=$(($y-(14-$m)/12))
##echo y0 is $y0

x=$(($y0 + ($y0/4) - ($y0/100) + ($y0/400)))
##echo x is $x

m0=$(($m + (12*((14-$m)/12)) - 2))
##echo m0 is $m0

d0=$((($d + $x + ((31*$m0)/12))%7))
##echo d0 is $d0

if [[ $d0 -eq 0 ]]
then
d0=Sunday
fi

if [[ $d0 -eq 1 ]]
then
d0=Monday
fi

if [[ $d0 -eq 2 ]]
then
d0=Tuesday
fi

if [[ $d0 -eq 3 ]]
then
d0=Wednesday
fi

if [[ $d0 -eq 4 ]]
then
d0=Thursday
fi

if [[ $d0 -eq 5 ]]
then
d0=Friday
fi

if [[ $d0 -eq 6 ]]
then
d0=Saturday
fi

echo the day on $day"/"$month"/"$year is  $d0
