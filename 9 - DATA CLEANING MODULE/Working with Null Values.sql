# Working with NULL Values


SELECT COUNT(sweepstake_id), COUNT(phone)	# this table has BLANK value
FROM customer_sweepstakes					# BLANK value can sometimes gives you wrong COUNT since it actually doesnt have any value in it
;

SELECT COUNT(customer_id), COUNT(phone)	# this table has NULL value
FROM customers
;

SELECT *
FROM customer_sweepstakes
;


UPDATE customer_sweepstakes		# this query utk kita tukar BLANK column tu jadi NULL
SET phone = NULL
WHERE phone = ''
;

UPDATE customer_sweepstakes
SET income = NULL
WHERE income = ''
;


SELECT income
FROM customer_sweepstakes
;

SELECT AVG(income)	 		# kalau sini, dia x include column NULL dekat bahagian divide by	
FROM customer_sweepstakes	# so walaupun table ada 10 column dia kira 8 je sbb ada 2 column NULL value
;

SELECT AVG(COALESCE(income,0))		# kalau pakai COALESCE, dia akan tukor NULL jadi value 0 maknanya dekat bhgian divide by tu akan calculate skali bilangan 0
FROM customer_sweepstakes			# sini dia akan tukar NULL jd 0, so column jadi 10 instead of 8
;


SELECT *
FROM customer_sweepstakes
;

SELECT birth_date, `Are you over 18?`
FROM customer_sweepstakes
;

SELECT birth_date, `Are you over 18?`
FROM customer_sweepstakes
WHERE (YEAR(NOW())-1 - 18) > YEAR(birth_date) # this shows everyone yg umur dia actually over 18 pada tahun 2023
;

UPDATE customer_sweepstakes
SET `Are you over 18?` = 'Y' 
WHERE (YEAR(NOW())-1 - 18) > YEAR(birth_date)
;

UPDATE customer_sweepstakes
SET `Are you over 18?` = 'N'
WHERE (YEAR(NOW())-1 - 18) < YEAR(birth_date)
;






