#!/bin/bash

# Initialize counters for each love language
words_of_affirmation=0
quality_time=0
receiving_gifts=0
acts_of_service=0
physical_touch=0

# Define user responses for each pair of statements
statements=(
  "A	I like to receive notes of affirmation from others.	E	I like it when others hug me."
  "B	I like to spend one‐on‐one time with others.	D	I feel loved when others give me practical help."
  "C	I like it when others give me gifts.	B	I like taking long walks with others."
  "D	I feel loved when others do things to help me.	E	I feel loved when others hug or touch me."
  "E	I feel loved when others hold me in their arms.	C	I feel loved when I receive a gift from others."
  "B	I like to go places with others.	E	I like to hold hands with others."
  "A	I feel loved when others acknowledge me.	C	Visible symbols of love (gifts) are very important to me."
  "E	I like to sit close to others.	A	I like it when others tell me that I am attractive."
  "B	I like to spend time with others.	C	I like to receive little gifts from others."
  "D	I know others love me when others help me.	A	Others’ words of acceptance are important to me."
  "B	I like to be together in real life when we do things together.	A	I like the kind words others say to me."
  "E	I feel whole when we hug.	D	What others do affects me more than what others say."
  "A	I value others’ praise and try to avoid others’ criticism.	C	Several inexpensive gifts mean more to me than one large expensive gift."
  "E	I feel closer to others when others touch me.	B	I feel close when we are talking or doing something together."
  "A	I like others to compliment my achievements.	D	I know others love me when they do things for me that they don’t enjoy doing."
  "E	I like for others to touch me when they walk by.	B	I like when others listen to me sympathetically."
  "C	I really enjoy receiving gifts from others.	D	I feel loved when others help me with my home projects."
  "A	I like when others compliment my appearance.	B	I feel loved when others take the time to understand my feelings."
  "E	I feel secure when others are touching me.	D	Others’ acts of service make me feel loved."
  "D	I appreciate the many things others do for me.	C	I like receiving gifts that others make."
  "B	I really enjoy the feeling I get when others give me their undivided attention.	D	I really enjoy the feeling I get when others do some act of service for me."
  "C	I feel loved when others celebrate my birthday with a gift.	A	I feel loved when others celebrate my birthday with meaningful words (written or spoken.)"
  "D	I feel loved when others help me out with my chores.	C	I know others are thinking of me when they give me a gift."
  "C	I appreciate it when others remember special days with a gift.	B	I appreciate it when others listen patiently and don’t interrupt me."
  "B	I enjoy extended trips with others.	D	I like to know that others are concerned enough to help me with my daily task."
  "E	Kissing me unexpectedly makes me feel loved.	C	Giving me a gift for no occasion makes me feel loved."
  "A	I like to be told that others appreciate me.	B	I like for others to look at me when we are talking."
  "C	Others’ gifts are always special to me.	E	I feel loved when others kiss me."
  "A	I feel loved when others tell me how much they appreciate me.	D	I feel loved when others enthusiastically do a task I have requested."
  "E	I need to be hugged by others every day.	A	I need others’ words of affirmation daily."
)

# Loop through the statements
for statement in "${statements[@]}"; do
  read -p "Choose A or B for the following pair of statements:
  $statement
  Your choice (A/B): " user_choice

  case "$user_choice" in
    "A")
      ((words_of_affirmation++));;
    "B")
      ((quality_time++));;
    "C")
      ((receiving_gifts++));;
    "D")
      ((acts_of_service++));;
    "E")
      ((physical_touch++));;
    *)
      echo "Invalid choice. Please choose either A or B."
      ;;
  esac
done

# Display the results
echo "A. Words of Affirmation: $words_of_affirmation"
echo "B. Quality Time: $quality_time"
echo "C. Receiving Gifts: $receiving_gifts"
echo "D. Acts of Service: $acts_of_service"
echo "E. Physical Touch: $physical_touch"
