source "$SCRIPTLOC/git-terminal/git-terminal.sh"

for i in $(ls -a)
do

	if [ -d $i ]
	then
		if [ -d "./$i/.git" ]
		then
			cd $i
			echo -e "$i $(branchname)"
			cd ../
		fi
	fi

done
