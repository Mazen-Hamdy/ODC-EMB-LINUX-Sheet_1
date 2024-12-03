#!/bin/bash

declare -a array=("$@")

sum=0

for element in "${array[@]}";
do
sum=$((sum+element))
done

echo "The sum of Elements in this Array is $sum"




