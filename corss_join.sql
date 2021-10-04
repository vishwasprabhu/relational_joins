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

-- CROSS JOIN 
-- Assume side_c is 40 so that the only condition needed to be satisfied in order to form a triangle is for a+b>c
SELECT *,
	CASE WHEN combination> 40 THEN 'Triangle'
		 ELSE 'Not Triangle'
		 END AS conclusion
FROM (
	SELECT side_a, side_b, side_a+side_b AS combination
	FROM side_a
	CROSS JOIN
	side_b
	ORDER BY 3 DESC ) a;