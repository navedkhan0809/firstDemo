#!/bin/bash -x

toss=$((RANDOM%2))
HEADS=1
if [ $toss -eq $HEADS ]
then
	echo You got heads.
else
	echo You got tails.
fi

