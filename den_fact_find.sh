#!/bin/bash

# Function to check if a number is odd or even
check_parity() {
  if [ $((num % 2)) -eq 0 ]; then
    echo "Even"
  else
    echo "Odd"
  fi
}

# Function to calculate the factorial of a number
calculate_factorial() {
  if [ $1 -eq 0 ]; then
    echo "Factorial of 0 is 1"
  else
    fact=1
    for ((i = 1; i <= $1; i++)); do
      fact=$((fact * i))
    done
    echo "Factorial of $1 is $fact"
  fi
}

read -p "Enter a number: " num

# Check parity using the function
parity=$(check_parity)
echo "Parity of $num is $parity"

# Calculate and print the factorial using the function
calculate_factorial $num
