#!/bin/bash -x

function fun () {
k=$1
original=$k
reverse=0

while [ $k -gt 0 ]
do
	remainder=$(($k%10))
	k=$(($k/10))
	reverse=$(($reverse*10 + $remainder))
done

if [ $original == $reverse ]
then
	echo "$original is a palindrome"
else
	echo "$original is not a palindrome"
fi

}

echo -e "Enter first Number=\c"
read n

echo -e "Enter Second Number=\c"
read m

fun $n
fun $m






#!/bin/bash -x

#fun () {

#a=$(($1 + 1))
#echo $a

#}

#echo Enter first number
#read m

#echo Enter Second number
#read n

#fun $m
#fun $n
