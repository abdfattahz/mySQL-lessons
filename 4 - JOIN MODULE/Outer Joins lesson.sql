# Outer Joins
# return all the columns from a specified table, regardless of it if it's overlaps


SELECT c.customer_id, first_name, co.order_id
FROM customers AS c
JOIN customer_orders AS co # this is INNER JOIN , will only show data that overlaps
	ON c.customer_id = co.customer_id
ORDER BY c.customer_id, co.order_id
;


SELECT c.customer_id, c.first_name, co.order_id
FROM customers AS c
LEFT OUTER JOIN customer_orders AS co # gonna take everything on the left table which is 'customers' table and it'll take data from the right table that overlaps or match. if not, the data will still be there but it'll be NULL 
	ON c.customer_id = co.customer_id
ORDER BY c.customer_id, co.order_id
;


SELECT c.customer_id, first_name, co.order_id
FROM customers AS c
RIGHT OUTER JOIN customer_orders AS co # gonna take everything on the right table which is 'customer_orders' table and it'll take data from the left table that overlaps or match. if not, the data will still be there but it'll be NULL
	ON c.customer_id = co.customer_id  # for this case we know that order_id for customer_id 100107 and 100109 is not available so it'll not show up on the order id, and it'll not show the data from customer_id and first_name
ORDER BY c.customer_id, co.order_id
;

# There's another type of JOIN in most types of sequel that is called FULL OUTER JOIN, which is a LEFT OUTER JOIN and RIGHT OUTER JOIN combined byt MySQL does not have it




