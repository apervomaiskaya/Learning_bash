#!/bin/bash
#
#
if [ $# -ne 2 ]
then
	echo "2 arguments are needed, directory being moved and target directory"
	exit 1
fi

# check if directory exists
if [ ! -d "$1" ]
then
	echo "Error! "$1" does not exist or not a directory"
	exit 1
fi

# check if target directory exists 
if [ ! -d "$2" ]
then
        echo "Error! $2 does not exist or not a directory"
	exit 1
fi

#delete only if directory copied successfully
if cp -r "$1" "$2" && rm -rf "$1"
then
	echo "Directory $1 was successfully moved to $2"
	exit 0
else 
	echo "Error! Something went wrong!"
	exit 1
fi









