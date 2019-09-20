#!/bin/bash

function removedir {
	echo 'Please enter the name of directory which you want to delete: '
    
    emp=""

	read nameofrd    
    
    if [[ $nameofrd == $emp ]]; then
        echo 'Empty input'
        rmdir 2>>error_log
        return 0
    fi
    
    if [ ! -d "$nameofrd" ]; then
        echo 'No such directory'
        rmdir -p $nameofrd 2>>error_log
        return 0
    fi

    if [ ! -r "$nameofrd" ]; then
        echo 'You have not permission'
        rmdir -p $nameofrd 2>>error_log
        return 0
    fi
    
    echo "Are you sure that you want to remove $nameofrd (y/yes - if yes)"
    
    read cond
    
    if  [ $cond = "y" ] || [ $cond = "yes" ]; then    
        rmdir -p $nameofrd
        echo 'OK'
        return 0 
    else
        echo "Directory wasn't removed"
    fi 
}
