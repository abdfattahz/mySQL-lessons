# Rollup
# when added to a group by statement, allow to get sum of the actual output of your aggregations AT THE BOTTOM

SELECT customer_id, SUM(tip) AS total_tips
FROM customer_orders
GROUP BY customer_id WITH ROLLUP 
;


SELECT customer_id, COUNT(tip) AS count_tips
FROM customer_orders
GROUP BY customer_id WITH ROLLUP 
;



