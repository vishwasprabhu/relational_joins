--TABLE CREATION FOR CROSS JOIN
-- drop table if exists
DROP TABLE IF EXISTS side_a;
DROP TABLE IF EXISTS side_b;
-- create tables
CREATE TABLE side_a (side_a INT NOT NULL);
CREATE TABLE side_b (side_b INT NOT NULL);
-- insert records
INSERT INTO side_a VALUES (20);
INSERT INTO side_a VALUES (20);
INSERT INTO side_a VALUES (21);
INSERT INTO side_a VALUES (14);

INSERT INTO side_b VALUES (23);
INSERT INTO side_b VALUES (20);
INSERT INTO side_b VALUES (22);
INSERT INTO side_b VALUES (13);

-- show side_a table
SELECT * FROM side_a;
-- show side_b table
SELECT * FROM side_b;

--TABLE CREATION FOR IMDB dataset
DROP TABLE IF EXISTS avengers;
DROP TABLE IF EXISTS star_wars;

CREATE TABLE avengers
(character VARCHAR,
 actor VARCHAR,
 first_movie_appearance VARCHAR,
 release_year integer,
 PRIMARY KEY (character, actor));

INSERT INTO avengers VALUES 
('Tony Stark/Iron Man', 'Robert Downey Jr.', 'Iron Man', 2008),
('Nick Fury', 'Samuel L. Jackson', 'Iron Man', 2008),
('Jarvis/Vision', 'Paul Bettany', 'Iron Man', 2008),
('Natasha Romanova/Black Widow', 'Scarlett Johansson', 'Iron Man 2', 2010),
('Thor', 'Chris Hemsworth', 'Thor', 2011),
('Jane Foster', 'Natalie Portman', 'Thor', 2011),
('Steve Rogers/Captain America', 'Chris Evans', 'Captain America: The First Avenger', 2011);

CREATE TABLE star_wars
(character VARCHAR,
 actor VARCHAR,
 first_movie_appearance VARCHAR,
 release_year integer,
 PRIMARY KEY (character, actor));

INSERT INTO star_wars VALUES 
('Padme Amidala', 'Natalie Portman', 'The Phantom Menace', 1999),
('Mace Windu', 'Samuel L. Jackson', 'The Phantom Menace', 1999),
('Rey', 'Daisy Ridley', 'The Force Awakens', 2015),
('Kylo Ren', 'Adam Driver', 'The Force Awakens', 2015),
('Rose Tico', 'Kelly Marie Tran', 'The Last Jedi', 2017),
('Dryden Vos', 'Paul Bettany', 'Solo', 2018);

select * from avengers;
select * from star_wars;

--LEFT JOIN
SELECT a.actor, s.actor
FROM avengers AS a LEFT JOIN star_wars AS s
ON a.actor = s.actor;

--RIGHT JOIN
SELECT a.actor, s.actor
FROM avengers AS a RIGHT JOIN star_wars AS s
ON a.actor = s.actor;

--INNER JOIN
SELECT avengers.character AS avengers_character,
		avengers.actor AS actor,
		star_wars.character AS star_wars_character
FROM avengers INNER JOIN star_wars
ON avengers.actor = star_wars.actor;

--OUTER JOIN
SELECT avengers.character AS avengers_character,
		CASE WHEN avengers.actor IS NULL THEN star_wars.actor
		ELSE avengers.actor END AS actor,
		star_wars.character AS star_wars_character
FROM avengers FULL OUTER JOIN star_wars
ON avengers.actor = star_wars.actor;

-- CROSS JOIN 
-- Assume side_c is 40 so that the only condition needed to be satisfied in order to form a triangle is for a+b>c
SELECT *,
	CASE WHEN summation> 40 THEN 'Triangle'
		 ELSE 'Not Triangle'
		 END AS conclusion
FROM (
	SELECT side_a, side_b, side_a+side_b AS summation
	FROM side_a
	CROSS JOIN
	side_b
	ORDER BY 3 DESC ) a;

