-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
-- test
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

SELECT first_name, last_name, teams.name,stats.home_runs FROM players JOIN stats ON stats.player_id = players.id JOIN teams on teams.id = stats.team_id WHERE teams.year = 2019 ORDER BY stats.home_runs DESC LIMIT 1;
