# Lag and Lead
# Lag is used to get a value from the row that comes before the current row
# Lead to get a value from the row that comes after the current row


SELECT *,
LAG (salary) OVER (),
LEAD (salary) OVER ()
FROM employees
;


SELECT *, # this query is for if we want to see paygap between each employee on each dept
LAG (salary) OVER (PARTITION BY department ORDER BY employee_id)
FROM employees
;


SELECT *, lag_col - salary AS pay_discrepancy
FROM (
SELECT *, 
LAG (salary) OVER (PARTITION BY department ORDER BY employee_id) AS lag_col
FROM employees) AS lag_table
;


SELECT *, lag_col - salary AS pay_discrepancy
FROM (
SELECT *, 
LEAD (salary) OVER (PARTITION BY department ORDER BY employee_id) AS lag_col
FROM employees) AS lag_table
;


SELECT *, IF(salary > lag_col, 'More', 'Less')
FROM (
SELECT *, 
LEAD (salary) OVER (PARTITION BY department ORDER BY employee_id) AS lag_col
FROM employees) AS lag_table
;

