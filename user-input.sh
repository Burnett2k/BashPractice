#!/bin/bash

echo Hi! What is your name?
read -p 'Name: ' FNAME
# Get the user name and use -p to let the user know we are looking for the username
read -p 'Username: ' USERVAR
# Get the password and use -s to make the input silent so that it cannot be seen
read -sp 'Password: ' PASSVAR
echo Nice to meet you, $FNAME
echo Here are your login details: 
echo Here is your username $USERVAR
echo Here is your password $PASSVAR