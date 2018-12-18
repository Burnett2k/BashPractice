#!/bin/bash

# storing the contents of a command in a variable
entries=$(ls -l)

# display the contents of the current directory to the user
echo There are $entries entries in $PWD