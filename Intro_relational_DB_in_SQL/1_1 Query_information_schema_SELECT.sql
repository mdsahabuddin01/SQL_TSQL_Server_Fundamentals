--Have a look at the database
SELECT table_schema, table_name
FROM information_schema.tables;

-- have a look at the columns of a certain table
SELECT table_name, column_name, data_type
FROM information_schema.columns 
WHERE table_name ='pg_config';

-- Query the right table in information_schema to get columns
SELECT column_name, data_type 
FROM information_schema.columns 
WHERE table_name = 'university_professors' AND table_schema = 'public';


-- finding columsn in a table
SELECT COUNT(*)
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'university_professors';
