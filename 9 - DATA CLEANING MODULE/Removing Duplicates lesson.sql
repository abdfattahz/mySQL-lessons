# Removing Duplicates
# actually removing data from the table
# do not ever use the actual table to remove anything bcs it'll remove it from the actual database
# do it on a test database
# staging table is the raw table, so we never gonna touch this table 


SELECT *
FROM bakery.customer_sweepstakes 
;

# ALTER TABLE customer_sweepstakes RENAME COLUMN `ï»¿sweepstake_id` TO `sweepstake_id`;

# we have two customer id that duplicates in this table

SELECT customer_id, COUNT(customer_id) # see how many each customer_id is inside the table
FROM bakery.customer_sweepstakes 
GROUP BY customer_id # remember to use GROUP BY bcs we use COUNT or aggregate in SELECT statement
;

SELECT customer_id, COUNT(customer_id) 
FROM bakery.customer_sweepstakes 
GROUP BY customer_id # remember to use GROUP BY bcs we use COUNT or aggregate in SELECT statement
HAVING COUNT(customer_id) > 1
;


SELECT customer_id, # same as above first query but this is window function
ROW_NUMBER () OVER (PARTITION BY customer_id ORDER BY customer_id) AS row_num
FROM bakery.customer_sweepstakes 
;


SELECT *
FROM (
	SELECT customer_id, # same as above query but this is window function
	ROW_NUMBER () OVER (PARTITION BY customer_id ORDER BY customer_id) AS row_num
	FROM bakery.customer_sweepstakes) AS table_row # dont forget to give alias to the subquery for it to work
WHERE row_num > 1
;

# this is how to delete them

DELETE FROM customer_sweepstakes
WHERE sweepstake_id IN (
	
    SELECT sweepstake_id
	FROM (
		SELECT sweepstake_id, 
		ROW_NUMBER () OVER (PARTITION BY customer_id ORDER BY customer_id) AS row_num
		FROM bakery.customer_sweepstakes) AS table_row 
		WHERE row_num > 1)
;









