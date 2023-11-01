#!/bin/bash

# Function to generate 5 unique random numbers between 1 and 50
generate_winning_numbers() {
  WINNING_NUMBERS=($(shuf -i 1-50 -n 5))
}

# Function to check how many numbers match
check_numbers() {
  matched=0
  for n in "${user_numbers[@]}"; do
    for m in "${WINNING_NUMBERS[@]}"; do
      if [ $n -eq $m ]; then
        matched=$((matched + 1))
      fi
    done
  done
}

# Function to display the prize based on the number of matches
display_prize() {
  case $matched in
    0) echo "No prize for you.";;
    1) echo "You won a small prize.";;
    2) echo "You won a medium prize.";;
    3) echo "You won a large prize.";;
    4) echo "You won a very large prize.";;
    5) echo "Congratulations! You hit the jackpot!";;
  esac
}

# Function to input user numbers
input_user_numbers() {
  echo "Enter 5 numbers between 1 and 50:"
  for ((i = 1; i <= 5; i++)); do
    read -p "Number $i: " num
    while [[ $num -le 0 || $num -ge 51 ]]; do
      echo "Please enter a number between 1 and 50."
      read -p "Number $i: " num
    done
    user_numbers+=($num)
  done
}

# Main function
main() {
  input_user_numbers
  generate_winning_numbers
  check_numbers

  echo "Your numbers: ${user_numbers[*]}"
  echo "Winning numbers: ${WINNING_NUMBERS[*]}"
  echo "You matched $matched numbers."
  display_prize
}

# Call the main function
main
