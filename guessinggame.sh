#!/usr/bin/env bash
# File: guessinggame.sh

# Count number of files in the current directory, assing to variable.
files_in_directory=$( ls -1 | wc -l )

function playGame { 

echo "Welcome! To start the game, please guess the number of files in the current directory:"
read guess

# Loop until the player enters the correct value.
until [[ $guess -eq $files_in_directory ]]
	do
		# Check that the entered guess is a number
		if [[ $guess =~ ^[0-9]+$ ]]
		then
			# Check if the entered guess is too high or too low.
			if [[ $guess -gt $files_in_directory ]]
			then
				echo "You guessed too high. Guess again:"
				read guess
			elif [[ $guess -lt $files_in_directory ]]
			then
				echo "You guessed too low. Guess again:"
				read guess
			fi
		else
			echo "Are you sure you entered a number? Please guess again:"
			read guess
		fi
	done

# When entered guess is correct, echo message and end game.
echo "Congratulations, your guess was correct!"

}

playGame
