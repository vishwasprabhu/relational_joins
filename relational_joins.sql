
select * from avengers;  -- verify contents of avengers table 
select * from star_wars; -- verify contents of star_wars table 

--LEFT JOIN
SELECT avengers.character AS avengers_character,
       avengers.actor AS actor,
       star_wars.character AS star_wars_character
FROM avengers 
LEFT JOIN star_wars
ON avengers.actor = star_wars.actor;

--RIGHT JOIN
SELECT avengers.character AS avengers_character,
       star_wars.actor AS actor,
       star_wars.character AS star_wars_character
FROM avengers 
RIGHT JOIN star_wars
ON avengers.actor = star_wars.actor;

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
