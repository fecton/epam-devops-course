#!/bin/bash

# Displays the help message
show_arguments(){
	echo "	Task A: Create a script that uses the following keys"
	echo "	-h (--help) show this help message"
	echo "	-a (--all) displays the IP addresses and symbolic names of all hosts in the current subnet"
	echo "	-t (--target) displays a list of open system TCP ports"
}


# Displays the IP addresses and symbolic names of all hosts in the current subnet
all(){
	nmap -sL -n $1 | awk '/Nmap scan report/{print $NF}'
}

# Displays a list of open system TCP ports
target(){
	cat /etc/services | grep -w 'tcp'
	sudo ss -tulpn
}

if ! [[ $1 == "" ]]; then
    if [[ $1 == "--all" ]] || [[ $1 == "-a" ]]; then
        all
    elif [[ $1 == "--target" ]] || [[ $1 == "-t" ]]; then
        target
    elif [[ $1 == "--help" ]] || [[ $1 == "-h" ]]; then
        show_arguments
    else
        echo "-h (--help) for help"
    fi
else
    show_arguments
fi
