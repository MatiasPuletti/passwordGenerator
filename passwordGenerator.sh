#!/bin/bash

# Password generator

echo "Hey there, looks like you need a password! Let me help you."
echo "What length of password are you looking for?"
read pass_length

echo "Alright, ${pass_length} characters it is! How many passwords do you need?"
read num_passwords

# Ask user for character set preferences
echo "Include uppercase letters? (y/n)"
read include_uppercase

echo "Include lowercase letters? (y/n)"
read include_lowercase

echo "Include numbers? (y/n)"
read include_numbers

echo "Include special characters? (y/n)"
read include_special

# Construct the character set based on user preferences
charset=""
if [[ $include_uppercase == "y" ]]; then
    charset="${charset}A-Z"
fi
if [[ $include_lowercase == "y" ]]; then
    charset="${charset}a-z"
fi
if [[ $include_numbers == "y" ]]; then
    charset="${charset}0-9"
fi
if [[ $include_special == "y" ]]; then
    charset="${charset}!@#$%^&*"
fi

# Ensure charset is not empty
if [[ -z "$charset" ]]; then
    echo "No character types selected. Using default charset."
    charset="A-Za-z0-9"
fi

# Generate passwords
for p in $(seq 1 $num_passwords);
do
    password=$(LC_ALL=C tr -cd "$charset" < /dev/urandom | fold -w $pass_length | head -n 1)
    echo "Password $p: $password"
done


