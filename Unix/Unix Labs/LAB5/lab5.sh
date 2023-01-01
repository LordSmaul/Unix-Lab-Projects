#!/bin/bash

set "$@"
if [ $# -eq 2 ]  #If 2 parameters are passed
then
	if [ $1 == "classlist.txt" ]  #If correct filename was passed as a parameter
	then
		file="classlist.txt"
		while read -r line  #Reads from the file until the end
		do
			if [ $line == $2 ]  #If 2nd argument passed is in the file
			then
				echo "This username is already in the system"
				exit 1  #Exits the entire script early
			fi
		done <$file

		echo $2 >> $file  #Adds username to the file if the 2nd argument passed was not in the file

	else  #Incorrect filename is passsed
		echo "File doesn't exist"
	fi
else  #If 2 parameters are not passed
	echo "Incorrect number of arguments received"
	echo "Terminating program"
fi


