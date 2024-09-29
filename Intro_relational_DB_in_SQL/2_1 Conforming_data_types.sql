CREATE TABLE transactions (
 transaction_date date, 
 amount integer,
 fee text
);

/*--The transaction_date accepts date values. 
According to the PostgreSQL documentation, 
it accepts values in the form of YYYY-MM-DD, DD/MM/YY, and so forth. */
--Let's add a record to the table 

INSERT INTO transactions (transaction_date, amount, fee) 
VALUES ('2018-09-24', 5454, '30');

-- Doublecheck the contents
SELECT *
FROM transactions;
