#! /bin/bash

#This script copies a file to a new location and then deletes the original file.

# checking if no arguments are passed to the script
if [ $# -ne 2 ]
then
	echo "2 files are needed, old file name and file name"
	exit 1
fi

# check if the first argument is not a file
if [ ! -f "$1" ]
then
        echo "Error! "$1" does not exist or not a file"
        exit 1
fi

# check if the second argument does not exist
if [ ! -e "$2" ]
then
        echo "Error! "$2" does not exist or not a file"
        exit 1
fi

#working in a standard situation when all parameters are passed correctly and the first one is a valid file and delete the first file
sudo cp "$1" "$2" && sudo rm "$1"

# Provide feedback
echo "File \"$1\" has been copied to \"$2\" and deleted."
