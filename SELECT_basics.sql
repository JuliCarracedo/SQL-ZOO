--- Select basics
--- 1: Give the code that returns Germany's population
SELECT population FROM world
  WHERE name = 'Germany'
--- 2: Give the population of Sweden, norway and Denmark
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');
--- 3: Give the countries with area between 200k and 250k
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000