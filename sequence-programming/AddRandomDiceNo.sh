#!/bin/bash -x

dicenum1=$(( 1 + $((RANDOM%6))))
dicenum2=$(( 1 + $((RANDOM%6))))
echo First random dice number is $dicenum1
sleep 2
echo Second random dice number is $dicenum2
sleep 2
add=$(( $dicenum1 + $dicenum2 ))
echo "The addition of above random dice numbers = $add "
