--- 2: Show the names of countries with at least 200M population 
SELECT name
  FROM world
 WHERE population > 200000000
--- 3: Show the gdp per capita of every country with a population of at least 200M
SELECT name, (gdp/population) FROM world
WHERE population >= 200000000;
--- 4: Show the name and population in millions of every south american country
SELECT Name, population/1000000 AS Pop_per_million  FROM world
WHERE continent = 'South America'
--- 5: Show name and population of France, Germany and Italy
SELECT Name, Population FROM world
WHERE name = 'Germany' OR
name = 'Italy' OR
name = 'France';
--- 6: Show name of countries starting in 'United'
SELECT Name FROM world
WHERE name LIKE 'United%';
--- 7: Show the countries that are big by area or big by population. Show name, population and area.
SELECT Name, Population, Area FROM world
WHERE area > 3000000 OR
population > 250000000 ;
--- 8:  Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area.
SELECT Name, Population, Area FROM world
WHERE area > 3000000 XOR
population > 250000000 ;
--- 9: For South America show population in millions and GDP in billions both to 2 decimal places.
SELECT name, ROUND(population/1000000,2) AS Population_millions, 
ROUND(gdp/1000000000,2) AS Gdp_billions
FROM world
WHERE continent = 'South America';
--- 10: Show per-capita GDP for the trillion dollar countries to the nearest $1000.
SELECT name, ROUND((gdp/population)/1000, 0)*1000 AS Gdp_per_Capita
FROM world
WHERE gdp >= 1000000000000;
--- 11: Show the name and capital where the name and the capital have the same number of characters.
SELECT name, capital
  FROM world
 WHERE LENGTH(name) = LENGTH (capital) ;
 --- 12: Show the name and the capital where the first letters of each match. Don't include countries where the name and the capital are the same word.
 SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital, 1)
AND name <> capital;
--- 13: Find the country that has all the vowels and no spaces in its name.
SELECT name
   FROM world
WHERE name LIKE '%a%'
  AND name LIKE '%e%'
  AND name LIKE '%i%'
  AND name LIKE '%o%'
  AND name LIKE '%u%'
  AND name NOT LIKE '% %';