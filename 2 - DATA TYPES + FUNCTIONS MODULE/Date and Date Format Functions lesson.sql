# Date and Date Format Functions


SELECT *
FROM customers
;


SELECT NOW(), #shows current date and time (dont forget to put comma after new query)
CURDATE(), #shows current date 
CURTIME() #shows current time
;


SELECT YEAR(NOW()),
MONTH(NOW()),
DAY(NOW())
;


SELECT *
FROM customers
WHERE YEAR(birth_date) = YEAR(NOW()) #pull out which one that has the same birth date as the NOW year
;


SELECT *
FROM customer_orders 
WHERE YEAR(order_date) = YEAR(NOW()) - 2
;


SELECT DAYNAME(NOW())
;


SELECT order_date, DAYNAME(order_date), MONTHNAME(order_date)
FROM customer_orders
;


SELECT birth_date, DATE_FORMAT(birth_date,'%M %d %Y') #case sensitive format
FROM customers
;


SELECT birth_date, DATE_FORMAT(birth_date,'%m %d %Y') #case sensitive format
FROM customers
;


SELECT birth_date, DATE_FORMAT(birth_date,'%m-%D-%Y') #case sensitive format
FROM customers
;
