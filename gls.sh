source "$script_location/git.sh"

for i in $(ls -a)
do
	if [ -d $i ]
	then
		if [ -d "./$i/.git" ]
		then
			cd $i
			echo -e "$i $(printablebranchname)"
			if ! [ "$i" == "." ]
			then
				cd ../
			fi
		fi
	fi

done
