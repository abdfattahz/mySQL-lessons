# Joining on Multiple Conditions
# if you dont know what the tables name, check it on the schemas tab under the 'Tables'

SELECT *
FROM customer_orders
;

SELECT *
FROM customer_orders_review
;


SELECT * #we have some issue using this query because the cor is self filled by the customer itself, so we might encounter a lot of data misalignment. so we might need to use join on multiple conditions
FROM customer_orders AS co 
JOIN customer_orders_review AS cor
	ON co.order_id = cor.order_id # customer id does not aligned
;


SELECT * 
FROM customer_orders AS co 
JOIN customer_orders_review AS cor
	ON co.order_id = cor.order_id 
    AND co.customer_id = cor.customer_id # date does not aligned 
;


SELECT * 
FROM customer_orders AS co 
JOIN customer_orders_review AS cor
	ON co.order_id = cor.order_id 
    AND co.customer_id = cor.customer_id
    AND co.order_date = cor.order_date
;



