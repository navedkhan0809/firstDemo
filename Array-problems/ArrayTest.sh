#!/bin/bash -x

#name=(abc xyz pqr mno)
read a
counter=0
Fruits[((counter++))]="$a"
Fruits[((counter++))]="Orange"
Fruits[((counter++))]="Apple"


echo ${Fruits[@]}
#echo ${name[@]}

