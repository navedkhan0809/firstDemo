#!/bin/bash -x

echo "-------------------Welcome-------------------"
sleep 1
echo -e "Enter a range to find Prime numbers inbetween=\c"
read a b
echo "Prime Numbers between $a and $b are given below: "
if [ $a == 1 ]
then
	a=$(($a+1))
fi

for ((num=$a; num<=$b; num++))
do
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
		echo -e "[$num]\c"
	fi
done
