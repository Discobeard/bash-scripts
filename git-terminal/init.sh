#!/bin/bash

export PROMPT_COMMAND='PS1="$($(echo $SCRIPTLOC)/git-terminal/git-terminal.sh)"'
echo ‘Git Terminal Installed’
