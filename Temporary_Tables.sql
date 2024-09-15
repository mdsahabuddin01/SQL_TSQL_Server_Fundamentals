-- Temporary tablesSELECT  col1,   col2,   col3 INTO #my_temp_tableFROM my_existing_table WHERE-- Conditions
-- #my_temp_table exists until connection or session ends-- Remove table manuallyDROPTABLE #my_temp_table

SELECT  
  album.title AS album_title,
  artist.name as artist,
  MAX(track.milliseconds / (1000 * 60) % 60 ) AS max_track_length_mins
-- Name the temp table #maxtracks
INTO #maxtracks
FROM album
-- Join album to artist using artist_id
INNER JOIN artist ON album.artist_id = artist.artist_id
-- Join track to album using album_id
INNER JOIN track ON album.album_id = track.album_id 
GROUP BY
  artist.artist_id,
  album.title,
  artist.name,
  album.album_id
-- Run the final SELECT query to retrieve the results from the temporary table
SELECT
  album_title,
  artist,
  max_track_length_mins
FROM
  #maxtracks
ORDER BY
  max_track_length_mins DESC,
  artist;


-- ------- #my_temp_table exists until connection or session ends-- Remove table manuallyDROPTABLE #my_temp_table
