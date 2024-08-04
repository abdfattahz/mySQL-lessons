# Aggregate Functions


SELECT customer_id, SUM(tip) AS total_tips
FROM customer_orders
GROUP BY customer_id
;


SELECT customer_id, AVG(tip) AS average_tips
FROM customer_orders
GROUP BY customer_id
ORDER BY average_tips
;


SELECT customer_id, MAX(tip) AS biggest_tips
FROM customer_orders
GROUP BY customer_id
ORDER BY biggest_tips
;


SELECT customer_id, MIN(tip) AS smallest_tips
FROM customer_orders
GROUP BY customer_id
ORDER BY smallest_tips
;


SELECT customer_id, COUNT(tip) AS count_of_tips # it will count the amount of individual rows
FROM customer_orders							# might not be accurate because it will still count a row with 0 value
GROUP BY customer_id
ORDER BY count_of_tips
;


SELECT first_name, last_name, COUNT(phone)
FROM customers
GROUP BY first_name, last_name
;


SELECT product_id, tip, COUNT(tip), COUNT(DISTINCT tip) # if you use COUNT, dont forget to put GROUP BY 
FROM customer_orders
GROUP BY product_id, tip
ORDER BY product_id
;





