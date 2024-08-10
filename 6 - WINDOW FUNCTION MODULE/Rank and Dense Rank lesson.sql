# Rank and Dense_Rank
# RANK is very dependant by ORDER BY in order it to know how to rank each value


SELECT *, # if we want to use RANK, we need to put comma after SELECT 
RANK () OVER (PARTITION BY department ORDER BY salary) 
FROM employees
;
# if there's a duplication, at the next unique value, it'll skip rank based on how many it already duplicates
# it'll pick back up the ranking order after skipping it 

SELECT *, 
RANK () OVER (PARTITION BY department ORDER BY salary DESC) 
FROM employees
;


SELECT * # finding the top 2 employee that we pay in each dept
FROM (
SELECT *, 
RANK () OVER (PARTITION BY department ORDER BY salary DESC) AS rank_row
FROM employees) AS ranked 
WHERE rank_row < 3
;


SELECT *, # DENSE_RANK does not skip rank value like the normal RANK did
DENSE_RANK () OVER (PARTITION BY department ORDER BY salary DESC) 
FROM employees
;

SELECT *, # see the diff
RANK () OVER (PARTITION BY department ORDER BY salary DESC) AS rank_,
DENSE_RANK () OVER (PARTITION BY department ORDER BY salary DESC) AS dense_ 
FROM employees
;

