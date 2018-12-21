#!/bin/bash

read -p 'What is your age? ' age

case $age in 
    [0-9]|10)
        echo very young
        ;;
    1[1-9]|20)
        echo sort of young
        ;;
    2[1-9]|30)
        echo Twenties?!? staring to get old!
        ;;
    *)
        echo old!
        ;;
esac