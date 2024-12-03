#!/bin/bash

# Check if a directory is provided as an argument, otherwise use the current directory
DIRECTORY=${1:-.}
echo "Before:"
find "$DIRECTORY" -type f -exec echo "File name: {}" \;

echo
find "$DIRECTORY" -type f -exec rename 'y/A-Z/a-z/' {} +;

echo
echo "After:"
find "$DIRECTORY" -type f -exec echo "File name: {}" \;

