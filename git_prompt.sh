#!/bin/bash
source "$script_location/git.sh"
source "$script_location/colors.sh"

fullprompt() {
	if git rev-parse 2>/dev/null
	then
		echo "$(prompt) $(printablebranchnameforprompt) \$"
	else
		echo "$(prompt) \$"
	fi
}

prompt() {
	echo "\u $(prompt_blue)\w$(prompt_endc)"
}

echo "$(fullprompt) "
