USE new_world;
SHOW Tables;
SELECT name, population FROM country WHERE population > 8000000;
SELECT name FROM country WHERE name LIKE '%land';
SELECT name FROM city WHERE population >= 500000 AND population < 1000000;
SELECT name FROM country WHERE continent LIKE 'Europe';
SELECT name, surfacearea FROM country order by surfacearea DESC;
SELECT city.Name, country.Name
from country INNER JOIN city ON city.countryCode = country.Code
where country.Name LIKE 'Netherlands';
SELECT name, population FROM city WHERE Name = 'Rotterdam';
SELECT name, surfacearea FROM country order by surfacearea DESC LIMIT 10;
SELECT name, population FROM city ORDER BY population DESC LIMIT 10;
SELECT SUM(population) FROM country;


