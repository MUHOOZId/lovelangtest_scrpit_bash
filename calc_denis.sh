#!/bin/bash
#Muhoozi Denis MSc Computer Science Engineering
# Function to perform mathematical operations
perform_operation() {
  case $1 in
    "Add") result=$((num1 + num2));;
    "Sub") result=$((num1 - num2));;
    "Mul") result=$((num1 * num2));;
    "Div") result=$(awk "BEGIN {print $num1 / $num2}");;
  esac
  echo "The $1 of $num1 and $num2 is :  $2 $result"
  echo "$(date) - The $1 of $num1 and  $num2 is $2 $result" >> results.txt
}

# Function to input two numbers
input_numbers() {
  read -p "Enter the first number: " num1
  read -p "Enter the second number: " num2
}

while true; do
  echo "Select an operation:"
  select operation in "Add" "Sub" "Mul" "Div" "Exit"; do
    case $operation in
      "Exit")
        echo "Goodbye!"
        exit;;
      "Add" | "Sub" | "Mul" | "Div")
        input_numbers
        perform_operation $operation
        break;;
      *)
        echo "Invalid option.";;
    esac
  done
done
