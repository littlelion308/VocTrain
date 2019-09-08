#! /usr/bin/bash
# VocTrain 0.2


function add(){
	clear
	echo this is not done yet
}
function learn(){
	clear
	echo this is not done yet
}
function stats(){
	clear
	echo this is not done yet
}
function mainMenu() {
	echo "VocTrain Main Menu

	1) Add a vocabulary
	2) Get Asked
	3) View statistics
	4) Exit
	
_________________________________________
"
	read INPUT
	case $INPUT in
		1|[aA]|[1][] )
			add
			;;
		2|[bB]|[2][] )
			learn
			;;
		3|[cC]|[3][] )
			stats
			;;
		4|[dD]|[4][] )
			exit 0
			;;
	esac
}
function install_first() {
	if [[ -e "~/.local/share/VocTrain/" ]]; then
		return 1
	else
		mkdir ~/.local/share/VocTrain
	fi
}
install_first
clear
mainMenu
EXIT="false"
while [ $EXIT = "false" ]
do
	mainMenu
done 
exit 0
