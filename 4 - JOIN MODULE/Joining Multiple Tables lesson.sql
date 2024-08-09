# Joining Multiple Tables

SELECT *
FROM customers;

SELECT *
FROM products;

SELECT *
FROM customer_orders;


SELECT p.product_name, co.order_total, c.first_name
FROM products AS p
JOIN customer_orders AS co 
	ON p.product_id = co.product_id
JOIN customers AS c
	ON co.customer_id = c.customer_id
;


SELECT p.product_id, co.product_id, co.customer_id, c.customer_id 
FROM products AS p
JOIN customer_orders AS co
	ON p.product_id = co.product_id
JOIN customers AS c
	ON co.customer_id = c.customer_id
;



