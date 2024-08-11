# Regular Expression Examples and Use Cases


SELECT *
FROM z_regular_expression
;


SELECT *
FROM z_regular_expression
WHERE email REGEXP '@gmail'
;


SELECT email, REGEXP_SUBSTR(email, '@.+') # on this case, we cant use LIKE because it is not literal value
FROM z_regular_expression
;


SELECT email, REGEXP_SUBSTR(email, '@[a-z]+') 
FROM z_regular_expression
;


SELECT phone
FROM z_regular_expression
WHERE phone REGEXP '[0-9]{3}.[0-9]{3}.[0-9]{4}' # means that we want any 3 values of number from 0-9 then, any 3 values of number from 0-9, then any 4 values of number from 0-9
;												# we put dot in between means that we want any character, since the phone number formatting is not standardize in this table 


SELECT phone
FROM z_regular_expression
WHERE phone REGEXP '[0-9]{3}-[0-9]{3}-[0-9]{4}' # put dash to specify we only want dash in between those value
;


SELECT *
FROM z_regular_expression
WHERE phrase REGEXP '^SQL' # means that we want value that starts with SQL
;


SELECT *
FROM z_regular_expression
WHERE phrase REGEXP 'SQL' # means that we want value that has 'SQL'
;


SELECT *
FROM z_regular_expression
WHERE phrase REGEXP '.+SQL.+' # means that we want any value before and after 'SQL' 
;













