-- Using parentheses in  queries
--all artists beginning with B who released tracks in 1986, but also retrieve any records where the release_year is greater than 1990.
SELECT 
  artist, 
  release_year, 
  song 
FROM 
  songlist 
  -- Choose the correct artist and specify the release year
WHERE 
  (
    artist LIKE 'B%' 
    and release_year = 1986
  ) 
  -- Or return all songs released after 1990
  or release_year > 1990 
  -- Order the results
ORDER BY 
  release_year, 
  artist, 
  song;

-- Retrieve the song,artist and release_year columns
SELECT 
  song, 
  artist, 
  release_year 
FROM 
  songlist 
  -- Ensure there are no missing or unknown values in the release_year column
WHERE 
  release_year IS NOT NULL 
  -- Arrange the results by the artist and release_year columns
ORDER BY 
  artist, 
  release_year;

SELECT 
  song, 
  artist, 
  release_year
FROM 
  songlist 
WHERE 
  -- Retrieve records greater than and including 1980
  release_year >= 1980 
  -- Also retrieve records up to and including 1990
  and release_year <= 1990 
ORDER BY 
  artist, 
  release_year;


SELECT 
  song, 
  artist, 
  release_year
FROM 
  songlist 
WHERE 
  -- Retrieve records greater than and including 1980
  release_year >= 1980 
  -- Replace AND with OR
  OR release_year <= 1990 
ORDER BY 
  artist, 
  release_year;
