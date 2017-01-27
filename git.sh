#!/bin/bash
source "$script_location/colors.sh"

branchname() {
	echo $(git rev-parse --abbrev-ref HEAD)
}

printablebranchname(){
	if [ "$(hasntbeenpushed)" ]
	then
		echo "$(orange)[$(branchname)]$(endc)"
	elif [ "$(ischanges)" ]
	then
		echo "$(green)[$(branchname)]$(endc)"
	else
		echo "$(red)[$(branchname)]$(endc)"
	fi
}

printablebranchnameforprompt(){
	if [ "$(hasntbeenpushed)" ]
	then
		echo "$(prompt_orange)[$(branchname)]$(prompt_endc)"
	elif [ "$(ischanges)" ]
	then
		echo "$(prompt_green)[$(branchname)]$(prompt_endc)"
	else
		echo "$(prompt_red)[$(branchname)]$(prompt_endc)"
	fi
}

ischanges() {
	echo "$(git status | grep 'working directory clean')"
}

hasntbeenpushed() {
	echo "$(git status | grep 'Your branch is ahead of')"
}
