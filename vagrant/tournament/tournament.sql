-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Delete any previously exisiting databases
DROP DATABASE tournament;

-- Create a new database
CREATE DATABASE tournament;

-- Connect to database
\c tournament

-- Create Tables

CREATE TABLE players(
  id SERIAL PRIMARY KEY,
  name TEXT
);

CREATE TABLE matches(
  id SERIAL primary key,
  winner INTEGER REFERENCES players(id),
  loser INTEGER REFERENCES players(id)
);

--Create view for standings with id, name, wins and matches
CREATE VIEW standings AS
SELECT players.id, players.name,
(SELECT count(matches.winner)
FROM matches
WHERE players.id = matches.winner)
AS total_wins,
(SELECT count(matches.id)
FROM matches
WHERE players.id = matches.winner
OR players.id = matches.loser)
AS total_matches
FROM players
ORDER BY total_wins DESC, total_matches DESC;
