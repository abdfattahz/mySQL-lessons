# Between Operator


SELECT *
FROM customers
WHERE total_money_spent BETWEEN 534 AND 1009
;

SELECT *
FROM customers
WHERE total_money_spent >= 534 AND total_money_spent <= 1009
;

SELECT *
FROM customers
WHERE birth_date BETWEEN '1998-01-01' AND '2020-01-01'
;

SELECT *
FROM customers
WHERE city BETWEEN 'D' AND 'S'
;










