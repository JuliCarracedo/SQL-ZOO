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