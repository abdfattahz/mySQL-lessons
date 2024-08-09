# Natural Joins


SELECT *
FROM products AS p
JOIN customer_orders AS co 
	ON p.product_id = co.product_id
ORDER BY p.product_id
;


SELECT *
FROM products AS p
NATURAL JOIN customer_orders AS co # we want the query to figure out theirself which data to join 
ORDER BY p.product_id 			   # it removes something that is redundant
;






