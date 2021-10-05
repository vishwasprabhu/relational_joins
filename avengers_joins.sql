
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS avengers;
DROP TABLE IF EXISTS star_wars;

CREATE TABLE movies
(movie_id VARCHAR,
 title VARCHAR,
 release_year INTEGER,
 PRIMARY KEY (movie_id));

INSERT INTO movies VALUES
('tt0371746', 'Iron Man', 2008),
('tt1228705', 'Iron Man 2', 2010),
('tt0800369', 'Thor', 2011),
('tt0458339', 'Captain America: The First Avenger', 2011),
('tt4154796', 'Avengers: Endgame', 2019),
('tt0120915', 'The Phantom Menace', 1999),
('tt2488496', 'The Force Awakens', 2015),
('tt3748528', 'Rogue One', 2016),
('tt2527336', 'The Last Jedi', 2017),
('tt3778644', 'Solo', 2018),
('tt0034583', 'Casablanca', 1942),
('tt0454876', 'Life of Pi', 2012);

CREATE TABLE actors
(actor_id VARCHAR,
 name VARCHAR,
 date_of_birth DATE,
 PRIMARY KEY (actor_id));

INSERT INTO actors VALUES
('nm0000375', 'Robert Downey Jr.', '1965-04-04'),
('nm0000168', 'Samuel L. Jackson', '1948-12-21'),
('nm0079273', 'Paul Bettany', '1971-05-27'),
('nm0424060', 'Scarlett Johansson', '1984-11-22'),
('nm1165110', 'Chris Hemsworth', '1983-08-11'),
('nm0000204', 'Natalie Portman', '1981-06-09'),
('nm0262635', 'Chris Evans', '1981-06-13'),
('nm0757855', 'Zoe Saldana', '1978-06-19'),
('nm5397459', 'Daisy Ridley', '1992-04-10'),
('nm3485845', 'Adam Driver', '1983-11-19'),
('nm3915784', 'John Boyega', '1992-03-17'),
('nm4511652', 'Kelly Marie Tran', '1989-01-17'),
('nm0000030', 'Audrey Hepburn', '1929-05-04'),
('nm1411676', 'Mindy Kaling', '1979-06-24');

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


SELECT * FROM avengers;  -- quick sanity check on avengers table

SELECT * FROM star_wars;  -- quick sanity check on star_wars table


SELECT avengers.character AS avengers_character,
       avengers.actor,
	   star_wars.character AS starwars_character
FROM avengers
LEFT OUTER JOIN star_wars
ON avengers.actor = star_wars.actor;


SELECT avengers.character AS avengers_character,
       star_wars.actor,
	   star_wars.character AS starwars_character
FROM avengers
RIGHT OUTER JOIN star_wars
ON avengers.actor = star_wars.actor;
