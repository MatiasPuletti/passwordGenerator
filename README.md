# Password Generator Script

## Overview
This bash script is a customizable password generator. It allows users to create secure, random passwords based on user-defined criteria, including length and character types.

## Features
- **Customizable Password Length:** Users can specify the desired length for each password.
- **Multiple Password Generation:** The script can generate multiple passwords in a single execution.
- **Character Type Selection:** Users have the option to include the following character types in their passwords:
  - Uppercase letters (A-Z)
  - Lowercase letters (a-z)
  - Numbers (0-9)
  - Special characters (e.g., `!@#$%^&*`)

## How to Use
1. **Run the Script:** Launch the script in a bash shell.
2. **Set Password Length:**
   - When prompted, enter the desired length for your passwords.
3. **Specify the Number of Passwords:**
   - Indicate how many passwords you want the script to generate.
4. **Choose Character Types:**
   - Respond to the prompts to include or exclude each type of character (uppercase, lowercase, numbers, special characters) in the passwords.
   - Answer with `y` (yes) or `n` (no) for each character type.
5. **Review Generated Passwords:**
   - The script will display each generated password.

## Example
```
$ ./passwordGenerator.sh
Hey there, looks like you need a password! Let me help you.
What length of password are you looking for?
10
Alright, 10 characters it is! How many passwords do you need?
3
Include uppercase letters? (y/n)
y
Include lowercase letters? (y/n)
y
Include numbers? (y/n)
y
Include special characters? (y/n)
n
Password 1: Nk2Js9Zu1e
Password 2: G7hT3fV0yp
Password 3: Q5rX6jW8nM
```

## Notes
- If no character types are selected, the script will use a default character set (uppercase, lowercase, numbers).
- The script requires `bash` and utilizes `tr`, `fold`, and `head` commands available in Unix-like environments.
