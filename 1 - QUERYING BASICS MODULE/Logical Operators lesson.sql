# And, Or, Not


SELECT *
FROM customers
;


SELECT *
FROM customers
WHERE state = 'PA' AND total_money_spent > 1000
;



SELECT *
FROM customers
WHERE (state = 'PA' OR city = 'New York') AND total_money_spent > 1000
;

SELECT *
FROM customers
WHERE (state = 'PA' OR birth_date > '1998-01-01') AND total_money_spent > 1000
;




SELECT *
FROM customers
WHERE NOT state = 'PA'
;

SELECT *
FROM customers
WHERE state != 'PA'
;


SELECT *
FROM customers
WHERE NOT (total_money_spent > 1000 AND state = 'TX')
;


