# Over Clause + Partition By



SELECT *
FROM customers AS c 
JOIN customer_orders AS co 
	ON c.customer_id = co.customer_id
;


SELECT c.customer_id, first_name, order_total, MAX(order_total)
FROM customers AS c 
JOIN customer_orders AS co 
	ON c.customer_id = co.customer_id
GROUP BY c.customer_id, first_name, order_total
;


SELECT c.customer_id, first_name, order_total, MAX(order_total) OVER() AS max_order_total # will output the max value from all the value from the table
FROM customers AS c 
JOIN customer_orders AS co 
	ON c.customer_id = co.customer_id
;

SELECT c.customer_id, first_name, order_total, (SELECT MAX(order_total) FROM customer_orders) AS max_order_total # output same as above
FROM customers AS c 
JOIN customer_orders AS co 
	ON c.customer_id = co.customer_id
;


SELECT c.customer_id, # PARTITION BY will partition or group the value based on what we wrote next to it side by side
first_name, 		  # which cant be done by subquery
order_total, 
MAX(order_total) OVER(PARTITION BY customer_id) AS max_order_total 
FROM customers AS c 
JOIN customer_orders AS co 
	ON c.customer_id = co.customer_id
;








