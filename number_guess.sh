#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=nb_guessing_db -t --no-align -c"

#func for checking the input
RIGHT_INPUT_CHECK(){ 
    while [[ ! $guessed_number =~ ^[0-9]+$ ]] 
    do
            echo "That is not an integer, guess again:"
            read guessed_number
    done
}

echo "Enter your username:"

read username

USER_IN_DB="$($PSQL "SELECT name FROM players where name='$username'")"
#---------------LOGIN
if [[ -z $USER_IN_DB ]] # if new user 
then
    #add to db and greet
    trash=$($PSQL "insert into players(name) values('$username')")
    echo "Welcome, $username! It looks like this is your first time here."

else #if not new user
    #get number of game played from player db
    games_played=$($PSQL "SELECT count(game_id) from players FULL JOIN games using(player_id) where name='$username'")
    #get best score
    best_game=$($PSQL "SELECT max(score) from games FULL JOIN players using(player_id) where name='$username'")
    #greet
    echo "Welcome back, $username! You have played $games_played games, and your best game took $best_game guesses."
fi

#--------------GAME START

#get player id 
PLAYER_ID=$($PSQL "SELECT player_id FROM players  WHERE name='$username'")
#add game to db
    #get last game id
    LAST_GAME_ID=$($PSQL "SELECT game_id FROM games full join players USING(player_id) WHERE name='$username' ORDER BY game_id DESC LIMIT 1")
#------add game info
    CURRENT_GAME_ID=$(( LAST_GAME_ID+1 ))
  trash=$( $PSQL "INSERT INTO games(game_id,player_id,score) VALUES($CURRENT_GAME_ID,$PLAYER_ID,0)" )
#------ start game
    #choose random number beetween 1 and 1000 
    secret_number=$(( 1 + RANDOM % 1000 ))
    #ask for input
    echo "Guess the secret number between 1 and 1000:"
    read guessed_number
    RIGHT_INPUT_CHECK
    number_of_guesses=1
    while [[  $guessed_number !=  $secret_number ]] #while the secret number is different to the gessed one
    do
        if [[ $guessed_number -gt $secret_number ]] #if the guessed is lower than the rendom one
        then 
            echo "It's lower than that, guess again:"
            read guessed_number
            RIGHT_INPUT_CHECK
            (( number_of_guesses++ ))

         #if the guessed is higger or equal to the random one 
        else # [[ $guessed_number -lt $secret_number ]] #if the guessed is higger than the random one
         
                    echo "It's higher than that, guess again:"
                    read guessed_number;
                    RIGHT_INPUT_CHECK
                    (( number_of_guesses++ ));
        fi
    done
              #if the guessed is equal the random one
              trash=$($PSQL "UPDATE games SET score=$number_of_guesses where game_id=$CURRENT_GAME_ID") 
              echo "You guessed it in $number_of_guesses tries. The secret number was $secret_number. Nice job!";
            
