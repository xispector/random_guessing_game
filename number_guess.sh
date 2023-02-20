#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
RANDOM_NUMBER=$(( $RANDOM % 1000 + 1 ))
echo "Enter your username:"
read -p "-> " NAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$NAME'")
if [[ -z $USER_ID ]]
then
  echo -e "\nWelcome, $NAME! It looks like this is your first time here."
  INSERT_NAME=$($PSQL "INSERT INTO users(name) VALUES('$NAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$NAME'")
else
  GAME_PLAYED=$($PSQL "SELECT COUNT(*) FROM games LEFT JOIN users USING(user_id) WHERE user_id = $USER_ID")
  BEST_RECORD=$($PSQL "SELECT MIN(record) FROM games LEFT JOIN users USING(user_id) WHERE user_id = $USER_ID")
  echo -e "\nWelcome back, $NAME! You have played $GAME_PLAYED games, and your best game took $BEST_RECORD guesses."
fi

COUNT=1
GAME () {
  if [[ -z $1 ]]
  then
    echo -e "\nGuess the secret number between 1 and 1000:"
  else
    echo -e "\n$1"
  fi

  read -p "-> " NUMBER
  if [[ $NUMBER =~ ^[0-9]+$ ]]
  then
    if [[ $NUMBER < $RANDOM_NUMBER ]]
    then
      (( COUNT++ ))
      GAME "It's lower than that, guess again:"
    elif [[ $NUMBER > $RANDOM_NUMBER ]]
    then
      (( COUNT++ ))
      GAME "It's higher than that, guess again:"
    else
      echo -e "\nYou guessed it in $COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"
      INSERT_GAME_LOG=$($PSQL "INSERT INTO games(user_id, random_number, record) VALUES($USER_ID, $RANDOM_NUMBER, $COUNT)")
    fi
  else
    GAME "That is not an integer, guess again:"
  fi
}

GAME
