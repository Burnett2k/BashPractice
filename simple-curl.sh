#!/bin/bash

prefix='https://www.'
# get website from user
read -p 'What website would you like to curl? ' website
echo
# prompt user what website we are about to attempt to curl
echo hitting $prefix$website
echo
# only display headers back to the user
curl -I $prefix$website