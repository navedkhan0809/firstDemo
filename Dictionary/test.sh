#!/bin/bash

count=0
for ((i=0; i<=15; i++))
do
a=$((RANDOM%9))
echo $a

if [ $a -eq 0 ]
then
	((count++))
fi
done

echo $w


