#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# complete tests 
# truncate columns
# read column variables
# insert column variables

# CREATE DATABASE worldcup
# \c worldcup
# CREATE TABLE teams(team_id SERIAL PRIMARY KEY, name VARCHAR(30) UNIQUE NOT NULL);
# CREATE TABLE games(game_id SERIAL PRIMARY KEY, year INT NOT NULL, round VARCHAR(30) NOT NULL, winner_id INT NOT NULL, opponent_id INT NOT NULL, winner_goals INT NOT NULL, opponent_goals INT NOT NULL);


echo $($PSQL "TRUNCATE games")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
    INSERT_RESULT=$($PSQL "INSERT INTO games(year, round, winner, opponent, winner_goals, opponent_goals) VALUES('$YEAR-01-01', '$ROUND', '$WINNER', '$OPPONENT', $WINNER_GOALS, $OPPONENT_GOALS)")
    echo $INSERT_RESULT
    # echo "$YEAR" $ROUND $WINNER $OPPONENT $WINNER_GOALS $OPPONENT_GOALS
    # Not working for some reason, but the command does. Inspect variables. 
  fi
done
