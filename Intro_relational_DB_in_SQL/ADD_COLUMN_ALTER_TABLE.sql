-- Add the university_shortname column
ALTER TABLE professors
ADD university_shortname text;

-- Print the contents of this table
SELECT * 
FROM professors

-- Rename the organisation column
ALTER TABLE affiliations
RENAME column organisation TO organization;

-- Rename the organisation column
ALTER TABLE affiliations
RENAME COLUMN organisation TO organization;

-- Delete the university_shortname column
ALTER TABLE affiliations
DROP COLUMN university_shortname;
