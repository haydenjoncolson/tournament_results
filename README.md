## tournament results project

- Develop database schema to store the game matches between players.
- Query this data and determine the winners of various games

## how to install

1. Clone or download this repo
2. Open /vagrant directory in shell
3. Run 'vagrant up', then 'vagrant ssh'
4. Open tournament.sql with PostgreSQL 'psql -f tournament.sql'
5. Run the python program 'python tournament.py'
6. Run the tournament test 'python tournament_test.py'

### Tests

1. countPlayers() returns 0 after initial deletePlayers() execution.
2. countPlayers() returns 1 after one player is registered.
3. countPlayers() returns 2 after two players are registered.
4. countPlayers() returns zero after registered players are deleted.
5. Player records successfully deleted.
6. Newly registered players appear in the standings with no matches.
7. After a match, players have updated standings.
8. After match deletion, player standings are properly reset.
9. Matches are properly deleted.
10. After one match, players with one win are properly paired.
