#!/bin/sh
# Finder script for assignment 1
# Author: Samir Ghaly

# Check if two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Error: Two arguments required."
    echo "Usage: $0 [path_to_directory] [search_string]"
    exit 1
fi

filesdir=$1
searchstr=$2

# Check if the first argument is a directory
if [ ! -d "$filesdir" ]; then
    echo "Error: Directory '$filesdir'  does not represent a directory on the filesystem."
    exit 1
fi

# Count the number of files
file_count=$(find "$filesdir" -type f | wc -l)

# Count the number of matching lines
matching_lines_count=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Output the result
echo "The number of files are $file_count and the number of matching lines are $matching_lines_count"
