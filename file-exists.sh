#!/bin/bash

# this if statement is using the test command with the -e flag to check if a file exists
# Example usage of script bash file-exists.sh readme.md

if [ -e $1 ]
then
    echo the file exists!
else
    echo the file does not exist!
fi