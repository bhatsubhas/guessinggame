#!/usr/bin/env bash
# File: guessinggame.sh


function guess_file_count {
    actual_file_count=$(ls | wc -l)
    while true
    do
        read -p "How many files are there in the current directory? " guessed_file_count
        if [ $guessed_file_count -eq $actual_file_count ]
	    then
		    echo "Congratulations!! you guessed it right...."
            break
        elif [ $guessed_file_count -gt $actual_file_count ]
        then
            echo "Your guess was too high!"
        else
            echo "Your guess was too low!"
        fi
        echo "Please try to guess again..."
    done
}

guess_file_count
