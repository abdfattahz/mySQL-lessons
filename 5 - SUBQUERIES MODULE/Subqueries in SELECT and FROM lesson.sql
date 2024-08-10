# Subqueries in SELECT and FROM Statement


SELECT product_id, quantity, AVG(quantity) # this will not run bcs too many column, we need to use GROUP BY 
FROM ordered_items
;


SELECT product_id, # so we can use subquery in the SELECT statement if we dont wanna use GROUP BY 
quantity, 		   # if we use GROUP BY you need to group it by specific value so the output will not be the same as this one, where it'll be shown across all of them
(SELECT AVG(quantity) 
	FROM ordered_items) AS avg_quantity
FROM ordered_items
;


SELECT product_id, quantity, AVG(quantity)
FROM ordered_items
GROUP BY product_id, quantity
;


SELECT product_id,
quantity, 	
(SELECT SUM(quantity) 
 FROM ordered_items) AS sum_quantity,	   
(quantity / (SELECT SUM(quantity) 
			 FROM ordered_items) * 100) AS percent_of_quantity
FROM ordered_items
;


SELECT product_id, avg_quantity
FROM (SELECT product_id, 
		 quantity, 		   
		(SELECT AVG(quantity) 
		 FROM ordered_items) AS avg_quantity
         FROM ordered_items) AS avg_quant  # we need to have AS for this table
;







