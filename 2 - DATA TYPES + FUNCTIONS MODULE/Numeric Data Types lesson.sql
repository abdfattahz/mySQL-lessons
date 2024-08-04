# Numeric Functions


SELECT *
FROM products
;



SELECT ROUND(123.456789, 2) #give how many decimal places based on the number you put after ,
;

SELECT sale_price, ROUND(sale_price,1)
;


SELECT CEILING(5.3) #rounds up to the nearest whole number #will always rounds up eventho the dec number is lower than 5
;

SELECT FLOOR(5.9) #rounds down to the nearest whole number #will always rounds down eventho the dec number is bigger than 5
;

SELECT sale_price, CEILING(sale_price), FLOOR(sale_price)
FROM products #need to specify from which table we are pulling
;


SELECT ABS(-4.6) #will give the absolute value of the number ||
;





