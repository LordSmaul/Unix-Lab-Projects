#!/bin/bash

file=$1

if [[ $# -eq 0 ]]
then
	echo "Error! Please provide a file input as an argument"
	exit 1
fi

while IFS="," read -r numberX numberY
do
	echo $numberX $numberY | awk '{print $1 + $2}'
done < <(tail -n +2 $file)
