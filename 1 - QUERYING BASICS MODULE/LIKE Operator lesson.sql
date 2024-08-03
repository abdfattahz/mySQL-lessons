#LIKE Operator 

# % - zero, one, or multiple characters
# _ - single character

SELECT * 
FROM customers
WHERE first_name LIKE 'K%' #it is not CASE sensitive #starts with K
;

SELECT * 
FROM customers
WHERE first_name LIKE '%N' #end with an N
;

SELECT * 
FROM customers
WHERE first_name LIKE '%N%' #will find any word that have N anywhere
;

SELECT * 
FROM customers
WHERE first_name LIKE '__N' #will find how many character long (based on how many _) before N
;

SELECT * 
FROM customers
WHERE first_name LIKE '_o_' 
;

SELECT * 
FROM customers
WHERE first_name LIKE '%kin' 
;

SELECT * 
FROM customers
WHERE last_name LIKE 'S%'
;

SELECT * 
FROM customers
WHERE last_name LIKE 'S_____%' #_ means how many character there must be, but a % doesnt need to be any character, 0 also can
;

SELECT * 
FROM customers
WHERE phone LIKE '975%'
;
