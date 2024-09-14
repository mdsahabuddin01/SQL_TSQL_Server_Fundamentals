-- SELECT the country column FROM the eurovision table
SELECT
  country
FROM 
  eurovision;

-- Limit the number of rows returned
SELECT 
  TOP (50) country 
FROM 
  eurovision;

-- Return unique countries and use an alias
SELECT 
  DISTINCT country AS unique_country 
FROM 
  eurovision;

-- Select country and event_year from eurovision
SELECT 
  country, 
  event_year
FROM 
  eurovision;

-- Return all columns, restricting the percent of rows returned
SELECT 
  top (50) PERCENT * 
FROM 
  eurovision;

-- Amend the code to select all columns
SELECT *
  --country, 
  --event_year 
FROM 
  eurovision;
