# Self Joins


SELECT *
FROM customers AS c
JOIN customers AS ss
	ON c.first_name = ss.first_name
;


SELECT c.customer_id, c.first_name, c.last_name, ss.customer_id, ss.first_name, ss.last_name
FROM customers AS c
JOIN customers AS ss
	ON c.customer_id + 1 = ss.customer_id 
;