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
	if [ "$(ischanges)" ]
	then
		echo "$(green)[$(git rev-parse --abbrev-ref HEAD)]$(endc)"
	else
		echo "$(red)[$(git rev-parse --abbrev-ref HEAD)]$(endc)"
	fi
}

ischanges() {
	echo "$(git status | grep 'working directory clean')"
}

blue() {
	echo "\[\033[1;34m\]"
}

red() {
	echo "\[\033[1;31m\]"
}

green() {
	echo "\[\033[1;32m\]"
}

endc() {
	echo "\[\033[0m\]"
}

echo "$(fullprompt) "
