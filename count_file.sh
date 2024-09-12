#!/bin/bash

# Check if a file is provided
if [ $# -eq 0 ]; then
    echo "No file provided. Usage: $0 filename"
    exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
    echo "File not found!"
    exit 1
fi

# Count lines, words, and characters using 'wc' command
lines=$(wc -l < "$1")
words=$(wc -w < "$1")
chars=$(wc -m < "$1")

# Output the results
echo "File: $1"
echo "Number of lines: $lines"
echo "Number of words: $words"
echo "Number of characters: $chars"
