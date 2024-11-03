#!/bin/bash
echo "🔥🔥🔥Beginning build!! 🔥🔥🔥"
firstline=$(head -n 1 source/changelog.md)
read -a arr <<< $firstline 
version=${arr[1]}
echo "the version of build "$version  

echo "enter '1' if you want to continue else eneter 0 to stop "
read user 
if [ $user  -eq 1 ]
then 
	for file in source/* 
	do 
		echo $file 
		if [ $file == "source/secretinfo.md" ]
		then 
			echo "not copying $file "
		else
			echo "copying $file " 
			cp $file build 
		fi
	done 
	echo "the list of copies files are  :"
	ls build 
	echo "you present working directory is " 
	echo `pwd`
else
	echo "come whern you are ready " 
fi
echo "build end " 

	

