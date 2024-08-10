# Exists
# kind of like IN operator, it's gonna check if the value exists within that subquery, if it's true, it'll give an output
# it will evaluate true or false. if true, it'll return an output, if false, it wont
# used for performance, it'll be faster bcs it's not evaluating the entire subquery, it'll only evaluate until it hits true


SELECT *
FROM customers
WHERE customer_id IN (
	SELECT customer_id
    FROM customer_orders
    )
;


SELECT *
FROM customers
WHERE EXISTS ( # it will only run the first query, since the subquery is true to the first one
	SELECT customer_id
    FROM customer_orders
    )
;


SELECT *
FROM customers c
WHERE EXISTS ( # it will run both query, since the subquery is false (different) with the first query
	SELECT customer_id
    FROM customer_orders
    WHERE customer_id = c.customer_id
    )
;


