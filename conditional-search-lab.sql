-- SQL Performing a Conditional Search Lab

-- 1. Range Filtering: Countries with population between 50M and 100M
SELECT Name, Capital, Region, SurfaceArea, Population 
FROM world.country 
WHERE Population BETWEEN 50000000 AND 100000000;

-- 2. Pattern Matching: Summing population for all 'Europe' regions
SELECT SUM(Population) AS "Europe Population Total" 
FROM world.country 
WHERE Region LIKE "%Europe%";

-- 3. Case-Insensitive Search: Finding 'central' regions
SELECT Name, Region 
FROM world.country 
WHERE LOWER(Region) LIKE "%central%";

-- 4. Lab Challenge: North America Totals
SELECT SUM(SurfaceArea) AS "N. America Surface Area", 
       SUM(Population) AS "N. America Population" 
FROM world.country 
WHERE Region = "North America";
