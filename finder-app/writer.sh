#!/bin/sh
# Writer script for assignment 1
# Author: Samir Ghaly

# Check if two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Error: Two arguments required."
    echo "Usage: $0 [path_to_directory] [write_string]"
    exit 1
fi

writefile=$1
writestr=$2

# Create the directory path if it doesn't exist
dir_path=$(dirname "$writefile")
if [ ! -d "$dir_path" ]; then
    mkdir -p "$dir_path"
    if [ $? -ne 0 ]; then
        echo "Error: Failed to create directory path: $dir_path"
        exit 1
    fi
fi

# Write the content to the file, overwriting if it exists
echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
    echo "Error: Failed to write to file: $writefile"
    exit 1
else
    echo "Content written to $writefile"
    exit 0
fi


