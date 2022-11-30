SELECT * FROM who_life_ex.who_lifex;

-- I want to see the top ten countries with the highest life Expectancy for 2010
SELECT life_expectancy, (country)
FROM who_life_ex.who_lifex
WHERE year = 2010
ORDER BY life_expectancy DESC
LIMIT 10;

-- I want to see the bottom ten countries with the lowest life Expectancy for 2010
SELECT life_expectancy, (country)
FROM who_life_ex.who_lifex
WHERE year = 2010
ORDER BY life_expectancy 
LIMIT 10;

-- I want to see the top ten countries with the highest life Expectancy for 2015 so I can see if there are any changes over the years
SELECT life_expectancy, (country)
FROM who_life_ex.who_lifex
WHERE year = 2015
ORDER BY life_expectancy DESC
LIMIT 10;

-- Haiti was the lowest in 2010, but this was also the year of the earth quake that killed more than 222000, which means the data has outside influences from what is captured in this dataset that affects life expectancy.

-- I want to see the bottom ten countries with the lowest life Expectancy for 2015
SELECT life_expectancy, (country)
FROM who_life_ex.who_lifex
WHERE year = 2015
ORDER BY life_expectancy 
LIMIT 10;

-- I want to see the average life expectancy by a country

SELECT avg(life_expectancy)
from who_life_ex.who_lifex
where country = 'Angola'; 

-- I want to see the different regions using GROUP BY function and then work out the average life expectancy by region

SELECT region 
FROM who_life_ex.who_lifex
GROUP BY region;

SELECT avg(life_expectancy)
from who_life_ex.who_lifex
where region = 'Africa'; 

SELECT avg(life_expectancy)
from who_life_ex.who_lifex
where region = 'Americas'; 

SELECT avg(life_expectancy)
from who_life_ex.who_lifex
where region = 'Eastern_Mediterranean'; 

SELECT avg(life_expectancy)
from who_life_ex.who_lifex
where region = 'Europe'; 

SELECT avg(life_expectancy)
from who_life_ex.who_lifex
where region = 'South-East_Asia';

SELECT avg(life_expectancy)
from who_life_ex.who_lifex
where region = 'Wester_Pacific';  


-- SUM of Population 
SELECT SUM(population) FROM who_life_ex.who_lifex;

-- COUNT the number of countries

SELECT COUNT(DISTINCT country) FROM who_life_ex.who_lifex;

-- I'm using case when to label countries with either high or low life expectancy

SELECT country, life_expectancy,
CASE
WHEN life_expectancy > 60 THEN 'LOW Life Expectancy'
ELSE 'HIGH Life Expectancy'
END AS 'High or Low Life Expectancy'
FROM who_life_ex.who_lifex;

-- I'm using case when to label countries with either high or low life expectancy but I also want to include the country average so I'm using subqueries as well

SELECT country, life_expectancy, (SELECT AVG (life_expectancy) FROM who_life_ex.who_lifex) AS 'Average_Life_Expectancy',
CASE
WHEN life_expectancy > 60 THEN 'Countries with Life Expectancy under 60 years'
ELSE 'Life Expectancy high'
END AS 'High or Low Life Expectancy'
FROM who_life_ex.who_lifex;

-- Wanting to find the top 10 Life Expectancy countries by their average
SELECT country, AVG (life_expectancy)
FROM who_life_ex.who_lifex
GROUP BY country
ORDER BY avg(life_expectancy) DESC
LIMIT 10;

-- Wanting to find the bottom 10 Life Expectancy countries by their average
SELECT country, AVG (life_expectancy)
FROM who_life_ex.who_lifex
GROUP BY country
ORDER BY avg(life_expectancy) 
LIMIT 10;


