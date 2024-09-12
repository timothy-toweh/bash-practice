#!/bin/bash

# Function to check if a number is prime
is_prime() {
    local num=$1

    # Check if number is less than 2 (not prime)
    if (( num < 2 )); then
        echo "$num is not a prime number."
        return
    fi

    # Check for factors from 2 to the square root of the number
    for (( i=2; i*i<=num; i++ )); do
        if (( num % i == 0 )); then
            echo "$num is not a prime number."
            return
        fi
    done

    # If no factors were found, it is prime
    echo "$num is a prime number."
}

# Get input from user
read -p "Enter a number: " number

# Call the function
is_prime "$number"
