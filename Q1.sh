#!/bin/bash

sum=0
for i in $(seq 1 $1);
do
sum=$((sum+i))
done

echo "The sum of integers from 1 to $1 is $sum"
