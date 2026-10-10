--1 which team has won the maximum gold medals over the years.

SELECT TOP 1
    a.team,
    COUNT(*) AS gold_medals
FROM athlete_events ae
INNER JOIN athletes a
    ON ae.athlete_id = a.id
WHERE ae.medal = 'Gold'
GROUP BY a.team
ORDER BY gold_medals DESC;

--2 for each team print total silver medals and year in which they won maximum silver medal..output 3 columns
-- team,total_silver_medals, year_of_max_silver

WITH cte AS (
    SELECT
        a.team,
        ae.year,
        COUNT(*) AS silver_medals,
        RANK() OVER (
            PARTITION BY a.team
            ORDER BY COUNT(*) DESC
        ) AS rn
    FROM athlete_events ae
    INNER JOIN athletes a
        ON ae.athlete_id = a.id
    WHERE ae.medal = 'Silver'
    GROUP BY a.team, ae.year
)
SELECT
    team,
    SUM(silver_medals) AS total_silver_medals,
    MAX(CASE
        WHEN rn = 1 THEN year
    END) AS year_of_max_silver
FROM cte
GROUP BY team
ORDER BY team;

--3 which player has won maximum gold medals  amongst the players 
--which have won only gold medal (never won silver or bronze) over the years

WITH cte AS (
    SELECT
        a.id,
        a.name,
        ae.medal
    FROM athlete_events ae
    INNER JOIN athletes a
        ON ae.athlete_id = a.id
)
SELECT TOP 1
    name,
    COUNT(*) AS no_of_gold_medals
FROM cte
WHERE id NOT IN (
    SELECT id
    FROM cte
    WHERE medal IN ('Silver', 'Bronze')
)
AND medal = 'Gold'
GROUP BY id, name
ORDER BY no_of_gold_medals DESC;

--4 in each year which player has won maximum gold medal . Write a query to print year,player name 
--and no of golds won in that year . In case of a tie print comma separated player names.

WITH cte AS(
    SELECT ae.year,a.name,
            COUNT(1) as no_of_gold
    FROM athlete_events ae
    INNER JOIN athletes a
        ON ae.athlete_id=a.id
    WHERE medal='Gold'
    GROUP BY ae.year,a.name
)
SELECT year,STRING_AGG(name,',') as players,
        no_of_gold
FROM(
        SELECT *,
        RANK()OVER(PARTITION BY year
                    ORDER BY no_of_gold desc) as rn
        FROM cte
    )a
WHERE rn=1
GROUP BY year,no_of_gold;

--5 in which event and year India has won its first gold medal,first silver medal and first bronze medal
--print 3 columns medal,year,sport

SELECT DISTINCT *
FROM (
    SELECT
        medal,
        year,
        sport,
        RANK() OVER (
            PARTITION BY medal
            ORDER BY year
        ) AS rn
    FROM athlete_events ae
    INNER JOIN athletes a
        ON ae.athlete_id = a.id
    WHERE a.team = 'India'
      AND ae.medal IN ('Gold', 'Silver', 'Bronze')
) A
WHERE rn = 1;

--6 find players who won gold medal in summer and winter olympics both.

SELECT a.name
FROM athlete_events ae
        INNER JOIN athletes a
        ON ae.athlete_id=a.id
WHERE medal='Gold'
GROUP BY a.name 
HAVING COUNT(DISTINCT season)=2;

--7 find players who won gold, silver and bronze medal in a single olympics. print player name along with year.
SELECT
    a.name,
    ae.year
FROM athlete_events ae
INNER JOIN athletes a
    ON ae.athlete_id = a.id
WHERE ae.medal IN ('Gold', 'Silver', 'Bronze')
GROUP BY a.id, a.name, ae.year, ae.season
HAVING COUNT(DISTINCT ae.medal) = 3;

--8 find players who have won gold medals in consecutive 3 summer olympics in the same event . Consider only olympics 2000 onwards. 
--Assume summer olympics happens every 4 year starting 2000. print player name and event name.

WITH cte AS (
    SELECT
        a.id,
        a.name,
        ae.year,
        ae.event
    FROM athlete_events ae
    INNER JOIN athletes a
        ON ae.athlete_id = a.id
    WHERE ae.year >= 2000
      AND ae.season = 'Summer'
      AND ae.medal = 'Gold'
    GROUP BY a.id, a.name, ae.year, ae.event
),
cte2 AS (
    SELECT *,
        LAG(year) OVER (
            PARTITION BY id, event
            ORDER BY year
        ) AS prev_year,
        LEAD(year) OVER (
            PARTITION BY id, event
            ORDER BY year
        ) AS next_year
    FROM cte
)
SELECT DISTINCT name, event
FROM cte2
WHERE year = prev_year + 4
  AND year = next_year - 4;
