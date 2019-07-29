#!/bin/bash

echo "Execute git command on each subfolder"
if [ $# -eq 0  ]
then
	echo Usage: gitall option...
else
	n=`find ./* -maxdepth 0 -type d|wc -l`
	if [ $n -eq 0 ]
	then
		echo No subfolder!
	elif [ $n -gt 10 ]
	then
		echo More than 10 subfolders, not supported!
	else
		for folder in */
		do
			if [ -d $folder ]
			then
				pushd $folder >/dev/null
				echo "-----------------------------------------"
				pwd
				git $*
				popd >/dev/null
			fi
		done
	fi
fi
