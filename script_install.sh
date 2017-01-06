#!/bin/bash
#creates the files/changes required to run the bash scripts

touch ~/.bash_profile
touch ~/.bash_rc
touch ~/.bash_scripts

setScriptAliases() {
	echo "setting script aliases"
	echo "alias kjps='$(pwd)/killalljps.sh'" >> ~/.bash_scripts
	echo "alias rmscript='$(pwd)/script_remove.sh'" >> ~/.bash_scripts
}

setGitAliases() {
	echo "setting git aliases"
	 git config --global alias.st status
	 git config --global alias.co checkout
}

if ! grep "~/.bash_scripts" ~/.bash_profile
then
	echo "source ~/.bash_scripts" >> ~/.bash_profile
	echo "source ~/.bash_scripts" >> ~/.bashrc

	echo "export SCRIPTLOC=$(pwd)" >> ~/.bash_scripts
	echo ". $(pwd)/git-terminal/init.sh" >> ~/.bash_scripts

	setScriptAliases
	setGitAliases

else
	echo "script already installed in the bash profile"
fi
