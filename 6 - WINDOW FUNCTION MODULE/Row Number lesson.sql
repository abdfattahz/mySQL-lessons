# Row_Number
# it's going to assign a number to each row


SELECT c.customer_id, 
first_name, 
order_total,
MAX(order_total) OVER(PARTITION BY customer_id) AS max_order_total
FROM customers AS c
JOIN customer_orders AS co
	ON c.customer_id = co.customer_id
;


SELECT c.customer_id, 
first_name, 
order_total,
ROW_NUMBER() OVER() # if we do () it means everything
FROM customers AS c
JOIN customer_orders AS co
	ON c.customer_id = co.customer_id
;


SELECT c.customer_id, 
first_name, 
order_total,
ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_total DESC) AS row_num
FROM customers AS c
JOIN customer_orders AS co
	ON c.customer_id = co.customer_id
WHERE row_num < 3 # this will not going to work because row_num is not in the table
;


SELECT *
FROM (
SELECT c.customer_id, # the workaround of the above problem
first_name, 
order_total,
ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_total DESC) AS row_num
FROM customers AS c
JOIN customer_orders AS co
	ON c.customer_id = co.customer_id
) AS row_table
WHERE row_num < 3 
;


SELECT c.customer_id, # the workaround of the above problem
first_name, 
order_total,
ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_total DESC) AS row_num
FROM customers AS c
JOIN customer_orders AS co
	ON c.customer_id = co.customer_id



