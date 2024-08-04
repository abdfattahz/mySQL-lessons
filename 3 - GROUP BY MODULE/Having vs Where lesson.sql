# Having vs Where Clause


SELECT customer_id, SUM(tip) AS total_tips # this query will not work because the WHERE happens before the SELECT happens
FROM customer_orders					   # meaning, total_tips still does not exist
WHERE total_tips > 5
GROUP BY customer_id
;


SELECT customer_id, SUM(tip) AS total_tips # HAVING will fix the above issue
FROM customer_orders					   
GROUP BY customer_id
HAVING total_tips > 5
;


SELECT customer_id, SUM(order_total) AS total 
FROM customer_orders					   
GROUP BY customer_id
HAVING SUM(order_total) > 40
ORDER BY total
;

#if you ever want to fitler down based off of your aggregations, need to use HAVING clause



