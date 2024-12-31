#!/bin/bash

# Function to count files in the current directory
count_files() {
    ls -1 | wc -l
}

# Main guessing game logic
file_count=$(count_files)
echo "Welcome to the guessing game!"
while true; do
    echo "How many files are in the current directory?"
    read guess
    if [[ $guess -eq $file_count ]]; then
        echo "Congratulations! Your guess is correct."
        break
    elif [[ $guess -lt $file_count ]]; then
        echo "Your guess is too low. Try again."
    else
        echo "Your guess is too high. Try again."
    fi
done
