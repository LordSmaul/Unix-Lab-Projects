#!/bin/bash

minute=$((10#$(date +"%M")))
num=$(($minute % 2))

if [ $num -eq 0 ]
then
	echo "The time is even"
else
	echo "The time is odd"
fi

