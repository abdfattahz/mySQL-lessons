# Breaking Column into Multiple Columns

SELECT *
FROM customer_sweepstakes
;

SELECT address, SUBSTRING_INDEX(address,',',1) # the number on the last value indicates brp banyak kita nk dia tunjuk 
FROM customer_sweepstakes
;


SELECT address, SUBSTRING_INDEX(address,',',1), SUBSTRING_INDEX(address,',',-1) # the number on the last value indicates brp banyak kita nk dia tunjuk 
FROM customer_sweepstakes
;


SELECT address, SUBSTRING_INDEX(SUBSTRING_INDEX(address,',',2),',',-1) # the number on the last value indicates brp banyak kita nk dia tunjuk 
FROM customer_sweepstakes
;


SELECT address, 
	SUBSTRING_INDEX(address,',',1) AS Street, 
	SUBSTRING_INDEX(SUBSTRING_INDEX(address,',',2),',',-1) AS City, # the number on the last value indicates brp banyak kita nk dia tunjuk 
	SUBSTRING_INDEX(address,',',-1) AS State
FROM customer_sweepstakes
;


SELECT *
FROM customer_sweepstakes
;


ALTER TABLE customer_sweepstakes	 # this query utk tambah column baru - tapi dia kosong sbb takde data
ADD COLUMN street VARCHAR(50) AFTER address
;

ALTER TABLE customer_sweepstakes
ADD COLUMN city VARCHAR(50) AFTER street,
ADD COLUMN state VARCHAR(50) AFTER city
;


UPDATE customer_sweepstakes		# this query utk kita fill up column yg kosong kt atas kita buat tadi
SET street = SUBSTRING_INDEX(address,',',1)
;

UPDATE customer_sweepstakes
SET city = SUBSTRING_INDEX(SUBSTRING_INDEX(address,',',2),',',-1)
;	

UPDATE customer_sweepstakes
SET state = SUBSTRING_INDEX(address,',',-1)
;


SELECT state, UPPER(state)		# capitalize column tu punya data
FROM customer_sweepstakes
;


UPDATE customer_sweepstakes
SET state = UPPER(state)
;


SELECT city, TRIM(city)		# query ni utk buang white space dlm column 
FROM customer_sweepstakes
;


UPDATE customer_sweepstakes
SET city = TRIM(city)
;

UPDATE customer_sweepstakes
SET state = TRIM(state)
;




