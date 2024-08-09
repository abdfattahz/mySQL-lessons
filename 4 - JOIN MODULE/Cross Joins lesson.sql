# Cross Joins
# create every single variation from both table 

SELECT *
FROM customers
;

SELECT *
FROM customer_orders
;


SELECT c.customer_id, c.first_name, co.customer_id, order_id
FROM customers AS c
CROSS JOIN customer_orders AS co
ORDER BY c.customer_id
;