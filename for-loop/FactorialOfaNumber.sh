#!/bin/bash -x

echo "Welcome to Factorial Program"
sleep 1
echo -e "Enter a number = \c"
read num2

for ((i=1; i<=$num2; i++))
do
   if [ $i -lt $num2 ]
   then
      echo -e "$i * \c"
   else
      echo $i
   fi

done

