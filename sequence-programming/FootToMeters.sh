#!/bin/bash -x

echo Enter first value
read f1
echo Enter second value
read f2

meters1=$(($f1/0.3048))
meters2=$(($f2/0.3048))
final=$(($meters1*$meters2))

echo $final

