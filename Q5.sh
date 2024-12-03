#!/bin/bash

factorial() {
    if [ $1 -le 1 ]; then
        echo 1
    else
        prev=$(($1 - 1))
        prev_fact=$(factorial $prev)
        echo $(($1 * $prev_fact))
    fi
}
num=$1
# Call the factorial function and display the result
result=$(factorial $num)
echo "Factorial of $num is $result"

