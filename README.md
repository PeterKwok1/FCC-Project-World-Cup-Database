# To Do
Create db
  CREATE TABLE games (year date, round varchar(30), winner varchar(30), opponent varchar(30), winner_goals int, opponent_goals int);  
Insert data
Query data

# Dump db
pg_dump -cC --inserts -U freecodecamp worldcup > worldcup.sql

# Rebuild db
psql -U postgres < worldcup.sql