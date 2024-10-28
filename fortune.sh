#!/bin/bash

# Program to tell a person's fortune

echo -e "\n~~ Fortune Teller ~~\n"

RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
N=$(( RANDOM % 6 ))

function GET_FORTUNE() {
  if [[ ! $1 ]]
  then
    echo "Ask a yes or no question:"
  else
    echo "Try again. Make sure it ends with a question mark:"
  fi

  read QUESTION
}

# Initial call without an argument to display the initial prompt
GET_FORTUNE

until [[ $QUESTION =~ \?$ ]]
do
  GET_FORTUNE again
done

# Print the response with a newline before it
echo -e "\n${RESPONSES[$N]}"
