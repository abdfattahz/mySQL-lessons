# CAST and CONVERT functions
# convert a value from one data type to another (only if the data is in the correct data type)



SELECT CAST("2022-01-01" AS DATETIME)
;


SELECT birth_date,
CAST(birth_date AS DATETIME),
CONVERT(birth_date, DATETIME)
FROM customers
;

SELECT first_name, 
CAST(first_name AS DECIMAL)
FROM customers 
;






