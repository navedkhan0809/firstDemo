#!/bin/bash -x

##for i in `seq 5`
##do
##	echo $((RANDOM%999))
##done | sort -n

a=$((RANDOM%999))
b=$((RANDOM%999))
c=$((RANDOM%999))
d=$((RANDOM%999))
e=$((RANDOM%999))
echo "$a" "$b" "$c" "$d" "$e"|sort

