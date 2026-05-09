#!/bin/bash

echo "Please enter the Number:"
read NUMBER

if [ $(($NUMBER % 2)) -eq 0 ]; then
    echo "Given number is $NUMBER is EVEN"
else
    echo "Given number is $NUMBER is ODD"
fi
