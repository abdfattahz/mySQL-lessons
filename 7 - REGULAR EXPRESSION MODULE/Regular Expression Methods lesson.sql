# Regular Expression Methods (REGEXP)



SELECT *
FROM customers
WHERE first_name LIKE '%k%' # this query searching for letter K somewhere in the value
;


SELECT *
FROM customers
WHERE first_name REGEXP 'k' # same as above but a bit more advanced
;


SELECT first_name, REGEXP_REPLACE(first_name,'a','b') # same as REPLACE function but it can do more advanced things
FROM customers
;


SELECT first_name, REGEXP_LIKE(first_name,'a') # the output will be either 1 or 0
FROM customers								   # 1 will return if the pattern we indicate after comma is found
;											   # 0 is otherwise


SELECT first_name, REGEXP_INSTR(first_name,'a') # it'll gonna show the starting index of that substring
FROM customers								    # it's like using LOCATE
;												# it'll show you at what position the value you put after comma inside the table


SELECT first_name, REGEXP_SUBSTR(first_name,'char') # it's going to find the value you put after comma inside the table
FROM customers								    	# if it's find it , it'll show in the output 
;	

