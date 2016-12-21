#!/bin/bash
#creates the files/changes required to run the bash scripts

touch ~/.bash_profile
touch ~/.bash_scripts

if ! grep "~/.bash_scripts" ~/.bash_profile
then
	echo "source ~/.bash_scripts" >> ~/.bash_profile

	echo "export SCRIPTLOC=$(pwd)" >> ~/.bash_scripts
	echo ". $(pwd)/git-terminal/init.sh" >> ~/.bash_scripts
	echo "alias kjps='$(pwd)/killalljps.sh'" >> ~/.bash_scripts
	echo "alias rmscript='$(pwd)/script_remove.sh'" >> ~/.bash_scripts

else
	echo "script already installed in the bash profile"
fi
