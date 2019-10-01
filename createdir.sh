#!/bin/bash



function createdir {
	echo 'Please enter the name of directory which you want to create: '
	read -r nameofcd
   # nameofcd="" 
    
   # for var in $rn
   # do
   #     nameofcd+=$var\ 
   # done

    emp=""
    key="-"

    if [[ $nameofcd == */* ]]; then
        echo 'You can`t use "/" symbol in directory name'
        return 0
    fi
    
    
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
    
	mkdir -p "$nameofcd"
    echo 'OK'
    return 0
}
