#!/bin/bash

function read_hosts # Reads hosts from "hosts.txt" into an array
{
	hosts=$(cat $1)
	count=0
	for host in $hosts
	do
		hosts_array[$count]=$host
		count=$((count + 1))
	done
}

function pick_host # Function that automates the process of picking the desired host
{
	count=1
	for host in $hosts
	do
		echo "$count) $host" # Reads hosts to standard output
		count=$((count + 1))
	done

	read -p "Enter a number to select a host: " which_host # Gets desired server from user input
	while [[ $which_host -lt 1 || $which_host -gt $count ]] # Makes sure that user input is within range
	do
		echo "Error! Invalid input."
		read -p "Enter a number to select the host: " which_host
	done
}

read_hosts $@ # Passes argument to the function paramter

while [[ "$cmd" != "Q" || "$cmd" != "q" ]] # While user input is not "Q" or "q"
do
	echo "(P) for ping"
	echo "(N) for nslookup"
	echo "(H) for hostname"
	echo "(I) for ifconfig"
	echo "(S) for ssh"
	echo "(Q) for quit"
	read -p "Select one of the above: " cmd

	case $cmd in # Case statment for user input

		N | n) # uses nslookup on user input host
			pick_host $hosts_array
			echo "nslookup ${hosts_array[$(($which_host-1))]}"
			nslookup ${hosts_array[$(($which_host-1))]}
			;;
		P | p) # uses ping on user input host
			pick_host $hosts_array
			echo "ping -c 1 ${hosts_array[$(($which_host-1))]}"
			ping -c 1 ${hosts_array[$(($which_host-1))]}
			;;
		H | h) # Displays current host name
			echo "hostname"
			hostname
			;;
		I | i) # Displays ifconfig of user
			echo "ifconfig -a"
			ifconfig -a
			;;
		S | s) # ssh function
			read -p "Enter the username: " user
			read -p "Enter the server: " host
			echo "ssh $user@$host"
			ssh $user@$host
			;;
		Q | q) # Quit program
			exit 1
			;;
		*) # Catch-all default
			echo "Command not found"
			;;
	esac
done
