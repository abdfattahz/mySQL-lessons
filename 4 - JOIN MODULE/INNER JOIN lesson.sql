# INNER Join

-- Basic Syntax :
#	SELECT column_name(s)
#	FROM table1
#	INNER JOIN table2
#	ON table1.column_name = table2.column_name;

SELECT *
FROM customers
;

SELECT *
FROM customer_orders
ORDER BY customer_id
;

SELECT *
FROM customers AS c 
JOIN customer_orders AS co # by default JOIN is INNER JOIN
	ON c.customer_id = co.customer_id # will only get value that overlaps, if no then it'll turn null
ORDER BY c.customer_id 
;


SELECT *
FROM products
;

SELECT *
FROM customer_orders
;


SELECT p.product_name, SUM(order_total) AS Total #if the column name is unique no need to specify from which table, if it's ambigous then need to specify
FROM products AS p
JOIN customer_orders AS co
	ON p.product_id = co.product_id
GROUP BY p.product_name
ORDER BY Total
;


SELECT *
FROM suppliers
;

SELECT *
FROM ordered_items
;

SELECT *
FROM suppliers AS s
JOIN ordered_items AS oi
	ON s.supplier_id = oi.shipper_id
;