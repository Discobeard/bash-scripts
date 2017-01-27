#!/bin/bash
#creates the files/changes required to run the bash scripts

touch ~/.bash_profile
touch ~/.bash_rc

# setScriptAliases() {
# 	echo "setting script aliases"
# 	echo "alias kjps='$(pwd)/killalljps.sh'" >> ~/.bash_scripts
# 	echo "alias gls='$(pwd)/gls.sh'" >> ~/.bash_scripts
# 	echo "alias rmscript='$(pwd)/script_remove.sh'" >> ~/.bash_scripts
# }

setGitAliases() {
	echo "setting git aliases"
	 git config --global alias.st status
	 git config --global alias.co checkout
}

if ! grep "bash_scripts.sh" ~/.bash_profile
then
	echo "export script_location=$(pwd)" >> ~/.bash_profile
	echo "source $(pwd)/bash_scripts.sh" >> ~/.bash_profile

	echo "export script_location=$(pwd)" >> ~/.bashrc
	echo "source $(pwd)/bash_scripts.sh" >> ~/.bashrc

	setGitAliases

else
	echo "script already installed in the bash profile"
fi
