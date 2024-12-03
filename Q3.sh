#!/bin/bash

file=$1
word=$2

count=$(grep -ow "$word" "$file" | wc -w)

echo "Number of occurrence of $word in $file is $count"
