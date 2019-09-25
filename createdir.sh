#!/bin/bash



function createdir {
	echo 'Please enter the name of directory which you want to create: '
	read nameofcd

    emp=""
    key="-"
    
    if [[ $nameofcd == $emp ]]; then
        echo 'Empty input'
        mkdir 2>>$path
        return 0
    fi

    if [[ $nameofcd == $key* ]]; then
        mkdir "$(pwd)/$nameofcd"
        echo 'OK'
        return 0
    fi

    if [ -d "$nameofcd" ]; then
        echo 'Directory alredy exist'
        mkdir $nameofcd 2>>$path
        return 0
    fi
    
	mkdir $nameofcd
    echo 'OK'
    return 0
}
