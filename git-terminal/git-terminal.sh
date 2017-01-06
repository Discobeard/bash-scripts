#!/bin/bash
source "$SCRIPTLOC/git.sh"
source "$SCRIPTLOC/colors.sh"

fullprompt() {
	if git rev-parse 2>/dev/null
	then
		echo "$(prompt) $(printablebranchname) \$"
	else
		echo "$(prompt) \$"
	fi
}

prompt() {
	echo "\u $(blue)\w$(endc)"
}

echo "$(fullprompt) "
