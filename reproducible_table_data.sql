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

-- TABLE CREATION FOR IMDB dataset 

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
('Jane Foster', 'Natalie Portman', 'Thor', 2011),
('Steve Rogers/Captain America', 'Chris Evans', 'Captain America: The First Avenger', 2011),
('T''Challa/Black Panther', 'Chadwick Boseman', 'Black Panther', 2018);

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
