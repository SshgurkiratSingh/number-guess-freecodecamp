#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --tuples-only -c"
NUM=$(( $RANDOM % 1000 ))

echo -e "\nEnter your username:"
read username
USER_ID=$($PSQL "select userr_id from users where name='$username'")
if [[ -z $USER_ID ]]
then
echo "Welcome, $username! It looks like this is your first time here."
CREATE_USER=$($PSQL "insert into users(name) values('$username')")
USER_ID=$($PSQL "select userr_id from users where name='$username'")
else
total_game=$($PSQL "select count(*) from history where user_id=$USER_ID")
best=$($PSQL "select min(try) from history where user_id=$USER_ID")
echo -e "\nWelcome back, $username! You have played $total_game games, and your best game took $best guesses."
fi
echo -e "\nGuess the secret number between 1 and 1000:"
read GUESS

CONT=1

while [ $GUESS != $NUM ] || [[ -z $NUM ]]
do
    if [[ $GUESS -lt $NUM ]] && [[ $GUESS =~ ^[0-9]+$ ]]
    then
        echo -e "\nIt's higher than that, guess again:"
    elif [[ $GUESS -gt $NUM ]] && [[ $GUESS =~ ^[0-9]+$ ]]
    then
        echo -e "\nIt's lower than that, guess again:"
    elif ! [[ $GUESS =~ ^[0-9]+$ ]]
    then
        echo -e "\nThat is not an integer, guess again:"
    fi
    read GUESS
    ((CONT++))
done

#if number is equal to the randomly generated number
if  [[ $GUESS == $NUM ]]
then
  echo -e "\nYou guessed it in $CONT tries. The secret number was $NUM. Nice job!"
INSERT_LOG=$($PSQL "insert into history(user_id,try) values($USER_ID,$CONT)")

fi