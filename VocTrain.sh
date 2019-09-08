#! /usr/bin/bash
# VocTrain 0.2


function add(){
	clear
	echo this is not done yet
	echo "VocTrain - Add a vocabulary

	1) make a new vocabulary file
	2) add a vocabulary to an existing file

___________________________________________________________________"
	read INPUT
	echo $INPUT
}
function read(){
#	LINE=$(sed -n $1 $2)
	echo $LINE
}
function learn(){
	LINENR="3"
	FILE="~/.local/share/VocTrain/de1-de2-en1-en2.VTv"
	clear
	echo "this is not done yet"
	echo "VocTrain - Get Asked"
#	echo $(read $LINENR $FILE)
	echo "____________________________________________________"
	read INPUT
#	if [[ $INPUT == $(read 1 $FILE) ]] || [[ $INPUT == $(read 2 $FILE) ]];then
		echo You got it right
#	else
		echo You got it wrong	
#	fi
}
function stats(){
	clear
	echo this is not done yet
	echo "VocTrain - statistics"
	cat ~/.local/share/VocTrain/stats.txt
	echo "_____________________________________________________________" 
	read -p "" INPUT
	clear
}
function mainMenu() {
	echo "VocTrain - Main Menu

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
	nop
#	mainMenu
done 
exit 0
