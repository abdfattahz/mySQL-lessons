# Standardizing Data
# the order is to remove duplicates first > then standardize the data


SELECT *
FROM customer_sweepstakes
;


# this is how to remove all these nasty characters in one passing sweep 
SELECT phone, REGEXP_REPLACE(phone, '[()-/+]', '') # we put plus sign to say there's multiple of those
FROM customer_sweepstakes						   # the bracket is the magic here, it means that it's gonna remove everything we indicates inside the whole value
; # if there's millions of rows, we could just put all the possible symbols inside the []

UPDATE customer_sweepstakes
SET phone = REGEXP_REPLACE(phone, '[()-/+]', '')
;


SELECT phone, SUBSTRING(phone, 1, 3), SUBSTRING(phone, 4, 3), SUBSTRING(phone, 7, 4)
FROM customer_sweepstakes
;

SELECT phone, CONCAT(SUBSTRING(phone, 1, 3), '-', SUBSTRING(phone, 4, 3), '-', SUBSTRING(phone, 7, 4))
FROM customer_sweepstakes
WHERE phone <> '' # this is to remove the blank phone row inside the output
;

UPDATE customer_sweepstakes
SET phone = CONCAT(SUBSTRING(phone, 1, 3), '-', SUBSTRING(phone, 4, 3), '-', SUBSTRING(phone, 7, 4))
WHERE phone <> '';

SELECT phone 
FROM bakery.customer_sweepstakes
;


# new string function which changes string data type to date data type
SELECT birth_date, 
STR_TO_DATE (birth_date, '%m/%d/%Y'), # we put the format based on the actual birth_date data inside the table
STR_TO_DATE (birth_date, '%Y/%d/%m')
FROM customer_sweepstakes
;

SELECT birth_date, 
IF(STR_TO_DATE (birth_date, '%m/%d/%Y') IS NOT NULL, STR_TO_DATE (birth_date, '%m/%d/%Y'), STR_TO_DATE (birth_date, '%Y/%d/%m')),
STR_TO_DATE (birth_date, '%m/%d/%Y'), # we put the format based on the actual birth_date data inside the table
STR_TO_DATE (birth_date, '%Y/%d/%m')
FROM customer_sweepstakes
;

UPDATE customer_sweepstakes # IF function dont usually work with UPDATE statement
SET birth_date = IF(STR_TO_DATE (birth_date, '%m/%d/%Y') IS NOT NULL, STR_TO_DATE (birth_date, '%m/%d/%Y'), STR_TO_DATE (birth_date, '%Y/%d/%m'))
;


UPDATE customer_sweepstakes # so we do CASE statement
SET birth_date = CASE 		# still got the same error
					WHEN STR_TO_DATE (birth_date, '%m/%d/%Y') IS NOT NULL THEN STR_TO_DATE (birth_date, '%m/%d/%Y')
                    WHEN STR_TO_DATE (birth_date, '%m/%d/%Y') IS NULL THEN STR_TO_DATE (birth_date, '%Y/%d/%m')
                    END
;


SELECT birth_date, CONCAT(SUBSTRING(birth_date, 9, 2),'/', SUBSTRING(birth_date, 6, 2),'/', SUBSTRING(birth_date, 1, 4))
FROM customer_sweepstakes
;

UPDATE customer_sweepstakes
SET birth_date = CONCAT(SUBSTRING(birth_date, 9, 2),'/', SUBSTRING(birth_date, 6, 2),'/', SUBSTRING(birth_date, 1, 4)) 
					WHERE sweepstake_id IN (9,11)
;


UPDATE customer_sweepstakes
SET birth_date = STR_TO_DATE (birth_date, '%m/%d/%Y')
;


SELECT `Are you over 18?` # need to use the `` bcs the table name have spaces 
FROM customer_sweepstakes
;


SELECT `Are you over 18?`,
CASE WHEN `Are you over 18?` = 'Yes' THEN 'Y'
	 WHEN `Are you over 18?` = 'No' THEN 'N'
     ELSE `Are you over 18?` # means that it'll stay as it was
     END 
FROM customer_sweepstakes
;

UPDATE customer_sweepstakes
SET `Are you over 18?` = CASE WHEN `Are you over 18?` = 'Yes' THEN 'Y'
						 WHEN `Are you over 18?` = 'No' THEN 'N'
						 ELSE `Are you over 18?` # means that it'll stay as it was
						 END 
;


SELECT * FROM bakery.customer_sweepstakes;







