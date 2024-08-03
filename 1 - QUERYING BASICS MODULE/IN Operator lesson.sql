# IN Operator



SELECT *
FROM customers
WHERE state = 'PA' OR state = 'TX' OR state = 'IL'
;

SELECT *
FROM customers
WHERE state IN ('PA','TX','IL')
;



SELECT *
FROM customers
WHERE first_name NOT IN ('Kevin','Kelly','Frodo')
;



