# String Functions


SELECT *
FROM customers
;


SELECT LENGTH('sky') #tells how many alphabet are there in the sentence
; 


SELECT first_name, LENGTH(first_name) AS Len_first
FROM customers
ORDER BY Len_first
;


SELECT first_name, UPPER(first_name), LOWER(first_name) #self explanatory uppercase lowercase
FROM customers
;


SELECT '    sky          ', TRIM('    sky          '), LTRIM('    sky          '), RTRIM('    sky          ') #removes white space
;


SELECT 'I       Love         SQL', TRIM('I       Love         SQL') #will not remove white spaces in the middle of the sentence
;


SELECT LEFT('Alexender',4) #will only select how many character based on the number we put after , 
;


SELECT first_name, LEFT(first_name,3), RIGHT(first_name,3)
FROM customers
;


SELECT SUBSTRING('Alexander',2,3) #2 is the starting point of the string we want to see, then 3 is how many character we want after that starting point
;


SELECT phone, SUBSTRING(phone,1,3), SUBSTRING(phone,5,3), SUBSTRING(phone,9,4)
FROM customers
;


SELECT REPLACE(first_name,'a','z') #first arg is the string, sec arg is what we want to replace, third arg is the new value 
FROM customers
;


SELECT REPLACE(phone,'-','')
FROM customers
;


SELECT LOCATE('x','Alexander') #find where the first argument is in the sec arg
;


SELECT first_name, LOCATE('Mic', first_name)
FROM customers
;


SELECT CONCAT('Alex', ' Freberg') #will combine any string we put as a literal string
;


SELECT phone, 
SUBSTRING(phone,1,3), 
SUBSTRING(phone,5,3), 
SUBSTRING(phone,9,4),
CONCAT(SUBSTRING(phone,1,3), SUBSTRING(phone,5,3), SUBSTRING(phone,9,4))
FROM customers
;




