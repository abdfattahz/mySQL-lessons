# LIMIT Clause 


SELECT *
FROM customers
-- WHERE total_money_spent	> 10000
ORDER BY total_money_spent DESC 
LIMIT 5
;

SELECT *
FROM customers
-- WHERE total_money_spent	> 10000
ORDER BY total_money_spent DESC 
LIMIT 5, 2 #the first argument will specify where you will start and the second argument will specify what number of row you going to return (means it will only take the next 2 after the first 5)
;



