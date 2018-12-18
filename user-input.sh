#!/bin/bash

echo Hi! What is your name?
read FNAME
echo 

# Get the user name and use -p to let the user know we are looking for the username
read -p 'Username: ' USERVAR
# Get the password and use -s to make the input silent so that it cannot be seen
read -sp 'Password: ' PASSVAR
echo Nice to meet you, $FNAME
echo
echo Here is your username $USERVAR
echo Here is your password $PASSVAR