#!/bin/bash

# Task 1: Write "Hello World!" from a variable
hello_world="Hello World!"
echo "$hello_world"

# Task 2: Write out the current system date
current_date=$(date)
echo "$current_date"

# Task 3: Concatenate and write out arguments $1 and $2
concatenated_args="$1$2"
echo "$concatenated_args"

# Task 4: Run commands with and without errors, and get exit codes
command_without_error="ls /"
command_with_error="ls /nonexistent"

$command_without_error
echo "Exit code for the command without error: $?"

$command_with_error
echo "Exit code for the command with error: $?"

# Task 5: Write out the script name and process ID
echo "Script name: $0, Process ID: $$"

# Task 6: Write out the argument count
echo "Argument count: $#"

# Task 7: Create a variable and write out the string itself
my_variable="\$my_variable"
echo "$my_variable"

# Task 8: Create a variable with the output of the date command
date_output=$(date)
echo "$date_output"

# Task 9: Create a text file from ls -lah /etc command
ls -lah /etc > etc_list.txt

# Task 10: Append text to the previous file
echo "This is additional text." >> etc_list.txt
