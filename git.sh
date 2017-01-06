#!/bin/bash
source "$SCRIPTLOC/colors.sh"

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

ischanges() {
	echo "$(git status | grep 'working directory clean')"
}

hasntbeenpushed() {
	echo "$(git status | grep 'Your branch is ahead of')"
}
