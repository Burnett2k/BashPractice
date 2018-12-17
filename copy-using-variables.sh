#!/bin/bash

# this command takes two arguments and uses them for the 'cp' (copy) command
cp $1 $2

echo Details for $2

#display details back to the user
ls -lh $2