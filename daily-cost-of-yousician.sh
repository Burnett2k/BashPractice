#!/bin/bash

echo daily cost calculator
read -p 'enter total cost of yousician service: ' acos
# Get the user name and use -p to let the user know we are looking for the username
read -p 'Number of days the service lasts for: ' numdays

echo The daily cost is: 
echo "scale=3; $acos/$numdays" | bc -l