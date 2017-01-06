#!/bin/bash

fullprompt() {
	if git rev-parse 2>/dev/null
	then
		echo "$(prompt) $(branchname) \$"
	else
		echo "$(prompt) \$"
	fi
}

prompt() {
	echo "\u $(blue)\w$(endc)"
}

branchname() {
	if [ "$(hasntbeenpushed)" ]
	then
		echo "$(orange)[$(git rev-parse --abbrev-ref HEAD)]$(endc)"
  elif [ "$(ischanges)" ]
	then
		echo "$(green)[$(git rev-parse --abbrev-ref HEAD)]$(endc)"
	else
		echo "$(red)[$(git rev-parse --abbrev-ref HEAD)]$(endc)"
	fi
}

ischanges() {
	echo "$(git status | grep 'working directory clean')"
}

hasntbeenpushed() {
	echo "$(git status | grep 'Your branch is ahead of')"
}

blue() {
	echo "\e[34m"
}

red() {
	echo "\e[31m"
}

green() {
	echo "\e[32m"
}

orange() {
	echo "\e[33m"
}

endc() {
	echo "\e[0m"
}

echo "$(fullprompt) "
