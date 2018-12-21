#!/bin/bash

if [ $1 -gt 100 ]
then
    echo that\'s a large number!
    if (( $1 % 2 == 0 ))
    then
        echo it is also an even number!
    else
        echo it is an odd number! You are odd!
    fi
else
    echo try a number over 100, please.
fi