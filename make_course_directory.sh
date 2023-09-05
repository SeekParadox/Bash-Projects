#!/bin/bash


#This script creates a directory for a course under the documents directory
#if the directory does not exist"
echo "Type the semester and Course name. Ex: Fall_2024 Programming 1\n"

read arg


#delimiter
IFS=' '

#splits the input and stores it in an array
read -a sem_course <<< "$arg"

checks if the user provided enough arguments
if [ ${#sem_course[@]} <  2 ]; then
	echo "Usuage: Not enough arguments"
	exit	
fi

 directory="/home/paradox/Documents/${sem_course[0]}/${sem_course[1]}"

 creates directory if the directory does not exist
 if [ ! -d $directory ]; then
	mkdir -p $directory	
	echo "Directory created at $directory"

else
	echo "Directory $directory already exist"

fi

