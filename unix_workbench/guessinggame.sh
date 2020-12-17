#!/usr/bin/env bash 
# File: guessinggame.sh 
function get_guess {
    guess=0
    echo "Type in your guess for how many files are in the current directory:"
    read guess 
    echo "your guess is: $guess files"
} 

number_files=$(ls -a -l | egrep '^-' | wc -l)

arewedone=1
while [[ arewedone -ne 0 ]]
do
    get_guess
    echo "Let's compare this with the actual number of files. "
    if [[ $guess -eq $number_files ]]
    then 
        arewedone=0
        echo "Success! The program ends here."
    else 
        echo "Sorry, that is not the right number of files. try one more time."
        echo 
    fi 
done   