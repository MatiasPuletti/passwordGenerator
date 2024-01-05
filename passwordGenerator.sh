
#!/bin/bash

# Password generator

echo "Hey there, looks like you need a password! Let me help you."
echo "What lenght of password are you looking for?" 
read pass_length

echo "Alright, ${pass_length} characters it is! How many passwords do you need?"
read num_passwords


for p in $(seq 1 $num_passwords);
do 	
	openssl rand -base64 48 | cut -c1-$pass_length

done
