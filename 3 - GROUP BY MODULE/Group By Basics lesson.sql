# Group By
# aggregate rows of data and perform calculations on those aggregations

# BASIC SYNTAX : 

# SELECT column1, AVG(column2)
# FROM table1
# GROUP BY column1;

#This is going to group similar rows from column1 while looking at the Average of column 2


SELECT customer_id, SUM(tip) # it will find all the tip from each customer id and the will do the grouping based on what we wrote
FROM customer_orders
GROUP BY customer_id
;


SELECT product_id, AVG(order_total)
FROM customer_orders
GROUP BY product_id
ORDER BY AVG(order_total) DESC
;





