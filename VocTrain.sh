#!/bin/sh
# Depends On:POSIX compaient shell, sed, awk

function mainMenu(){
	echo "Voctrain - Main menu"
	echo ""
	echo "	1)Learn added vocabulary"
	echo "	2)Add vocabulary"
	echo "	3)Quit"
	echo "__________________________________________"
	read JOB
	mMexecution
}
function Add(){
        echo "Voctrain - Add vocabulary"
        echo ""
        echo "  1)Add vocabulary to a new Dictonary"
        echo "  2)Add vocabulary to an existing Dictinary"
        echo "_____________________________________________________" 
        read ADDJOB 
        echo $JOB --- $ADDJOB 
}
function Learn(){
	echo learn
	echo $JOB
	echo "Voctrain - Learn added vocabulary"
	echo ""
	echo "	What Dictonary ?"
	echo "____________________________"
#	read DICT
#	RANDOMS=$(cat ~/.local/share/$DICT | wc -l)
#	echo $RANDOMS
	RANDOMS=50
	RANDB=$((RANDOMS / 2))
	RANDOM=$(awk -v min=1 -v max=$RANDB 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')
	echo $RANDOM
}
function mMexecution(){
	case $JOB in
		[2@bB])
		echo 2
		Add
		;;
		[3#cC])
		exit 0
		echo 3
		;;
		*)
		echo 1 or noting 
		Learn
		;;	
	esac
}
mainMenu
