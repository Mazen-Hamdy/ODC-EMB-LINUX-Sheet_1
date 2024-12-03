#!/bin/bash

file="$1"

echo "File '$file' before removing duplicate lines:"
cat $file
echo

awk '!seen[$0]++' "$file" > temp_file && mv temp_file "$file" #| sponge "$file"

echo "Duplicates removed from '$file'."

echo
echo "File '$file' after removing duplicate lines:"
cat $file
