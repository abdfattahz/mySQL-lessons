# Subqueries
# we use sub query because it's gonna be lot less strain on the system as a whole
# if we use JOIN instead of subquery, it may take a longer time to load, due to big table involved


SELECT *
FROM customers
;

SELECT *
FROM customers
WHERE customer_id IN ( # we can only have one column in sub queries
	SELECT customer_id # we use subquery so we dont have to use JOIN 
	FROM customer_orders
    WHERE tip > 1)
;

# Subquery: Simpler, more readable for this type of task (multiple aggregations).
# JOIN: Useful for combining related data from different tables but can complicate aggregation tasks.
# Performance: Subqueries can sometimes be more performant, depending on the situation.


SELECT AVG(total_money_spent)
FROM customers 									 # unable to run this query bcs of invalid use of group by
WHERE total_money_spent > AVG(total_money_spent) # so we use sub query to Avoid Complex GROUP BY with JOIN function
;


SELECT *
FROM customers 									  
WHERE total_money_spent > (SELECT AVG(total_money_spent) 
						   FROM customers)
;












