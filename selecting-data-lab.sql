-- SQL Selecting Data from a Database Lab

-- 1. Basic Selection & Counting
-- Returns the total number of records in the country table
SELECT COUNT(*) FROM world.country;

-- 2. Aliasing and Sorting
-- Renaming SurfaceArea for readability and sorting by highest population
SELECT Name, Capital, Region, SurfaceArea AS "Surface Area", Population 
FROM world.country 
ORDER BY Population DESC;

-- 3. Complex Filtering with AND
-- Filtering for mid-sized countries between 50M and 100M people
SELECT Name, Capital, Region, SurfaceArea AS "Surface Area", Population 
FROM world.country 
WHERE Population > 50000000 AND Population < 100000000 
ORDER BY Population DESC;

-- 4. Lab Challenge: Southern Europe Analysis
-- Question: Which country in Southern Europe has a population > 50,000,000?
-- Result: Italy
SELECT Name, Capital, Region, Population 
FROM world.country 
WHERE Population > 50000000 AND Region = "Southern Europe";
