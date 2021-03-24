#!/bin/bash -x

function palindrome () {
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

palindrome $n

