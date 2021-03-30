#!/bin/bash -x

for ((i=1; i<=5; i++))
do
a=$i
arr[(($a))]="$a"
done

echo ${arr[@]}


