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

echo -e "Enter a number = \c"
read num

primecheck $num
