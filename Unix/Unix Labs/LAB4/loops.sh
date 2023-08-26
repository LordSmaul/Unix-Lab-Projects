#!/bin/bash

month=$((10#$(date +"%m")))
minutes=$(date +"%M")
value=$((minutes + month))
for (( i=1 ; i<=$value ; i++ ));
do
	echo "Iteration $i out of $value. $((value-i)) iterations remaining"
done
