-- SQL Working with Functions Lab

-- 1. Aggregate Functions: Global Population Summary
SELECT sum(Population), avg(Population), max(Population), min(Population), count(Population) 
FROM world.country;

-- 2. String Manipulation: Isolating the first word of a Region
SELECT Region, substring_index(Region, " ", 1) 
FROM world.country;

-- 3. Filtering by String Length (Regions shorter than 10 characters)
SELECT DISTINCT(Region) 
FROM world.country 
WHERE LENGTH(TRIM(Region)) < 10;

-- 4. Challenge: Splitting Delimited Strings (Micronesia/Caribbean)
SELECT Name, 
       substring_index(Region, "/", 1) AS "Region Name 1", 
       substring_index(Region, "/", -1) AS "Region Name 2" 
FROM world.country 
WHERE Region = "Micronesia/Caribbean";
