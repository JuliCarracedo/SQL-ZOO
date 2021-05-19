SELECT SUM(population)
FROM world
---
SELECT continent FROM world
GROUP BY continent
---
SELECT SUM(gdp) FROM world
WHERE continent = 'Africa'
---
SELECT COUNT(name) FROM world
WHERE area >= 1000000
---
SELECT SUM(population ) FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania')
---
SELECT continent, COUNT(name) FROM world
GROUP BY continent
---
SELECT continent, COUNT(name) FROM world
WHERE population >= 10000000
GROUP BY continent
---
SELECT continent FROM world original
GROUP BY continent
HAVING (SELECT SUM(population) FROM world copy
WHERE original.continent = copy.continent
) >= 100000000