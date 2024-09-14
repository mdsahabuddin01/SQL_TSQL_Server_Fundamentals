-- Calculate the length of the description column
SELECT 
  len (description) AS description_length 
FROM 
  grid;

-- Select the first 25 characters from the left of the description column
SELECT 
  left(description, 25) AS first_25_left 
FROM 
  grid;

-- Amend the query to select 25 characters from the  right of the description column
SELECT 
  right(description, 25) AS last_25_right 
FROM 
  grid;

-- Stuck in the middle with you
-- Complete the substring function to begin extracting from the correct character in the description colum
-- Complete the query to find the length of `Weather'
-- Complete the query to find `Weather` within the description column
SELECT 
  description, 
  CHARINDEX('Weather', description) 
FROM 
  grid
WHERE description LIKE '%Weather%';

SELECT 
  description, 
  CHARINDEX('Weather', description) AS start_of_string,
  len('Weather') AS length_of_string 
FROM 
  grid
WHERE description LIKE '%Weather%';

SELECT TOP (10)
  description, 
  CHARINDEX('Weather', description) AS start_of_string, 
  LEN ('Weather') AS length_of_string, 
  SUBSTRING(
    description, 
    15, 
    LEN(description)
  ) AS additional_description 
FROM 
  grid
WHERE description LIKE '%Weather%';

-- To extract only the domain name datacamp.com from the URLs in SQL Server, you can use the CHARINDEX() and SUBSTRING() functions.
select
  description,
  substring(
    description,
    CHARINDEX('weather',description),
    len('weather')) 
    as
      weather_word
from
  grid
where
  description like '%weather%'
