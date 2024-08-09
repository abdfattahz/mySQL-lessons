# "Using" in Joins

SELECT *
FROM customer_orders;

SELECT c.customer_id, first_name, co.order_id
FROM customers AS c # FROM is left table 
LEFT OUTER JOIN customer_orders AS co # here is right table
	ON c.customer_id = co.customer_id
ORDER BY c.customer_id, co.order_id
;


SELECT c.customer_id, first_name, co.order_id
FROM customers AS c # FROM is left table 
LEFT OUTER JOIN customer_orders AS co # here is right table
	USING (customer_id) #just a shortcut or shorter syntax of ON statement
ORDER BY c.customer_id, co.order_id
;


