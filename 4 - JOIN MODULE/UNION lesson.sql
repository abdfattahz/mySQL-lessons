# Unions
# allows you to combine rows of data, unlike JOIN that combines columns


SELECT *
FROM customers
;

SELECT *
FROM products
;


SELECT first_name, last_name
FROM customers
UNION 
SELECT product_id, product_name
FROM products
;


SELECT first_name, last_name, 'Old' AS Label
FROM customers
WHERE YEAR(birth_date) < 1950
UNION
SELECT first_name, last_name, 'Good Tipper'
FROM customers AS c
JOIN customer_orders AS co
	ON c.customer_id = co.customer_id
WHERE tip > 3
UNION # is the same as UNION DISTINCT, it'll remove duplicates
SELECT first_name, last_name, 'Big Spender'
FROM customers AS c
WHERE total_money_spent > 1000
ORDER BY first_name, last_name # order by cant be used before UNION
;


SELECT first_name, last_name, 'Old' AS Label
FROM customers
WHERE YEAR(birth_date) < 1950
UNION ALL 
SELECT first_name, last_name, 'Old' AS Label
FROM customers
WHERE YEAR(birth_date) < 1950
;

