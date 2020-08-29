#!/usr/bin/env bash
#File: guessinggame.sh
filenum=$(ls | wc -l)

function guess_filenum {
        read guess
        if [[ $guess -eq $filenum ]]
        then
                echo "Congratulations!! That's the right answer!!"

                for f in $(ls)
                do
                        echo " $f "
                done
                echo "    ...bye now"
        else
                if [[ $guess -gt $filenum ]]
                then
                        echo "Oops, that's the wrong answer. There are less files than that, please try again and press Enter :"
                        guess_filenum
                else
                        echo "Nope, that's incorrect, the number of files is higher than that. Please try again and press Enter :"
                        guess_filenum
                fi
        fi
}

echo "This is the guessing game! Guess how many files are in the current directory!"
guess_filenum
