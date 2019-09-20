#!/bin/bash

function createdir {
	echo 'Please enter the name of directory which you want to create: '
	read nameofcd

    emp=""

    if [[ $nameofcd == $emp ]]; then
        echo 'Empty input'
        mkdir 2>>error_log
        return 0
    fi

    if [ -d "$nameofcd" ]; then
        echo 'Directory alredy exist'
        mkdir $nameofcd 2>>error_log
        return 0
    fi
    
	mkdir $nameofcd
    echo 'OK'
    return 0
}
