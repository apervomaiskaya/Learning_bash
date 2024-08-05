#!/bin/bash

# This script copies a file to a new location and then deletes the original file.

# Function to display usage information
usage() {
    echo "Usage: $0 <source_file> <destination_file>"
    echo "Where:"
    echo "  <source_file> - The file to be copied and deleted"
    echo "  <destination_file> - The new name or location for the file"
}

# Check if exactly two arguments are passed
if [ $# -ne 2 ]; then
    echo "Error: Incorrect number of arguments."
    usage
    exit 1
fi

# Check if the first argument is a valid file
if [ ! -f "$1" ]; then
    echo "Error: \"$1\" does not exist or is not a file."
    exit 1
fi

# Check if the second argument already exists
if [ -e "$2" ]; then
    echo "Error: \"$2\" already exists or is not a valid file name."
    exit 1
fi

# Copy the file and delete the original
sudo cp "$1" "$2" && sudo rm "$1"

# Provide feedback
echo "File \"$1\" has been copied to \"$2\" and deleted."

