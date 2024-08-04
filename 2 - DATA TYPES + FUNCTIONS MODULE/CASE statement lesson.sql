# Case Statement
# case statement is not a function, but has a lot of overlap with IF function
# better than IF statement because it can have multiple conditions with multiple output in one column

# Basic Syntax
# 	CASE expression
#		WHEN value1 THEN result1
#		WHEN value2 THEN result2
#		...
#		[ELSE else_result]
#	END
#	;


SELECT order_total,
tip,
IF(tip > 2, order_total * .75, order_total * 1.1) AS new_total,
IF(tip > 2, order_total * .75, order_total * 1.1) AS new_total
FROM customer_orders
;


SELECT units_in_stock,
CASE
	WHEN units_in_stock < 20 THEN 'ORDER NOW!'
    WHEN units_in_stock BETWEEN 21 AND 50 THEN 'Check in 3 days'
    WHEN units_in_stock > 51 THEN 'In Stock'
END AS 'Order Status'
FROM products
;


SELECT units_in_stock,
CASE
	WHEN units_in_stock < 20 THEN 'ORDER NOW!'
    WHEN units_in_stock BETWEEN 21 AND 50 THEN 'Check in 3 days'
    ELSE 'In Stock'
END AS 'Order Status'
FROM products
;


SELECT order_id
order_date,
CASE 
	WHEN YEAR(order_date) = YEAR(NOW()) - 2 THEN 'Active'
    WHEN YEAR (order_date) = YEAR(NOW()) - 3 THEN 'Last Year'
    ELSE 'Archived'
END AS 'Years'
FROM customer_orders
;


