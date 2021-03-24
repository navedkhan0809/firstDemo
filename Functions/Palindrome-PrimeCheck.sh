#!/bin/bash -x

function primecheck () {

num=$1
j=0

for ((i=2; i<=$num/2; i++ ))
do
      check=`echo "$num%$i"|bc`
      if [ $check == 0  ]
      then
         j=1
         break
      fi
done

if [ $j == 0  ]
then
   echo its a prime number
else
   echo its NOT a prime number
fi
}



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
		primecheck $original
	else
   	echo "$original is not a palindrome"
fi
}


echo -e "Enter first Number=\c"
read n

palindrome $n
