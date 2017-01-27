
export PROMPT_COMMAND='PS1="$($(echo $script_location)/git_prompt.sh)"'

alias kjps="$script_location/kjps.sh"
alias gls="$script_location/gls.sh"
alias rmscript="$script_location/script_remove.sh"

echo 'Bash Scripts Installed'
