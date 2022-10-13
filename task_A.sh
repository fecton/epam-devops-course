#!/bin/bash

install_necessary(){
    sudo apt install nmap -y
}

show_arguments(){
    echo "\t -a (--all) displays the IP addresses and symbolic names of all hosts in the current subnet"
    echo "\t -t (--target) displays a list of open system TCP ports"
}

all(){
    nmap -sL -n $1 | awk '/Nmap scan report/{print $NF}'
}

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
