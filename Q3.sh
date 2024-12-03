#!/bin/bash

if [ ! -f "$file" ]; then
    echo "Error: File '$file' not found!"
    exit 1
fi

file=$1
word=$2

count=$(grep -ow "$word" "$file" | wc -w)

echo "Number of occurrence of $word in $file is $count"
