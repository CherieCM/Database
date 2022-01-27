USE new_world;
SHOW TABLES;

-- What is the capital of country X ? (Accept X from user)
Prepare capital FROM 'SELECT capital, city.name FROM country WHERE name = ?';

SET @C = 'hungary';

EXECUTE capital using @C;

-- List all the languages spoken in the region Y (Accept Y from user)
Prepare region_lang FROM 'SELECT countrylanguage.Language, FROM country INNER JOIN countrylanguage.countrycode = country.code WHERE country.Region = ?';

Set @L = 'Northern Africa';

EXECUTE region_lang using @L;

-- Find the number of cities in which language Z is spoken (Accept Z from user)
Prepare lang FROM 'SELECT count(city.Name) FROM city INNER JOIN countrylanguage ON city.countrycode = countrylanguage.countrycode WHERE Language = ?';

SET @D = 'Arabic';

EXECUTE lang USING @D;

-- List all the continents with the number of languages spoken in each continent
Prepare cont_langs FROM 'SELECT Continent, count(countrylanguage.Language) FROM countrylanguage INNER JOIN country ON countrylanguage.countrycode = country.Code GROUB BY Continent';

EXECUTE lang;

-- For the country given as input, is there any countries that
-- have the same official language
-- is in the same region
