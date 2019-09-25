#!/bin/bash

source removedir.sh
source changedir.sh 
source createdir.sh

path="$HOME/learn/spo/error_log"

while true
do
	echo '
Select menu option:
1. current directory
2. change directory
3. print content of current directory
4. create directory
5. remove directory
6. exit
	'
	read menu
	case $menu in
		1)
		pwd
		;;
		2)
		changedir
		;;
		3)
		ls -la
		;;
		4)
		createdir
		;;
		5)
		removedir
		;;
		6)
		exit 0
		;;
		*)
		echo 'Invalid input'
		;;
	esac
done
