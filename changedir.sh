#!/bin/bash

function changedir {
	echo 'Please enter the name of directory you want to change to: '
	read -r nameofd

    emp=""
    key="-"   
 
    
    if [[ $nameofd == $key* ]]; then
        cd "$(pwd)/$nameofd"
        echo 'OK'
        return 0
    fi

    if [[ $nameofd == $emp ]]; then
        cd $nameofd
        echo 'OK'
        return 0
    fi

    if [ ! -d "$nameofd"  ]; then
        echo 'No such directory'
        cd $nameofd 2>>"$path"
        return 0
    fi

    if [ ! -r "$nameofd" ]; then
        echo 'You have not permission'
        cd $nameofd 2>>"$path"
        return 0
    fi
 
    cd "$nameofd"
    echo 'OK'
    return 0
}
