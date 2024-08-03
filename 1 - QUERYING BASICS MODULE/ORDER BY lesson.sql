# Order By


SELECT *
FROM customers
ORDER BY first_name #order will be ascending
;

SELECT *
FROM customers
ORDER BY first_name DESC #order will be descending
;

SELECT *
FROM customers
ORDER BY state, total_money_spent
;

SELECT *
FROM customers
ORDER BY state, total_money_spent DESC #if we want to reverse the total_money_spent only
;

SELECT *
FROM customers
ORDER BY state DESC, total_money_spent DESC #if we want to reverse both
;

SELECT *
FROM customers
ORDER BY 8 DESC #8 is the column number 
;

SELECT *
FROM customers
ORDER BY 8 DESC, 9 ASC #best to use column name instead of the number 
;



