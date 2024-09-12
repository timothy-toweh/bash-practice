#!/bin/bash

# Function to validate email address using regex
validate_email() {
    local email="$1"
    local regex="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"

    if [[ $email =~ $regex ]]; then
        echo "Valid email address"
    else
        echo "Invalid email address"
    fi
}

# Check if an argument is passed
if [ $# -eq 0 ]; then
    echo "Usage: $0 <email_address>"
    exit 1
fi

# Call the validate_email function
validate_email "$1"
