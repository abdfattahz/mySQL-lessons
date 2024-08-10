# ALL and ANY statements
# ALL means that the condition will be satisfied only if the operation is true for all values in a range within that subquery
# ANY means that the condition will be satisfied if the operation is true for any of the values in the range


SELECT *
FROM ordered_items
;


SELECT MAX(quantity * unit_price) AS total_order_price
FROM ordered_items
WHERE shipper_id = 1
;


SELECT shipper_id, order_id, quantity, unit_price, (quantity * unit_price) AS total_order_price
FROM ordered_items
WHERE (quantity * unit_price) > (SELECT MAX(quantity * unit_price) AS total_order_price # this one going to manually select the max amt 
									FROM ordered_items
									WHERE shipper_id = 1)
;


SELECT shipper_id, order_id, quantity, unit_price, (quantity * unit_price) AS total_order_price
FROM ordered_items
WHERE (quantity * unit_price) > ALL (SELECT (quantity * unit_price) AS total_order_price # this one we're just saying that the amt have to be greater than all of them esentially the same as above statement
										FROM ordered_items
										WHERE shipper_id = 1)
;


SELECT shipper_id, order_id, quantity, unit_price, (quantity * unit_price) AS total_order_price
FROM ordered_items
WHERE (quantity * unit_price) >= ANY (SELECT (quantity * unit_price) AS total_order_price # this one, the amt just have to be greater than any of the value on the subquery 
										FROM ordered_items
										WHERE shipper_id = 1)
;


