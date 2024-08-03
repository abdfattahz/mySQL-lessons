# Aliasing


SELECT product_name AS 'Goodie Name', units_in_stock 'UIS' #AS is optional, if we somehow want to change the column name in output
FROM products
;

SELECT units_in_stock * sale_price AS Potential_Revenue #make it so that the output name easy to understand
FROM products
;

SELECT prod.units_in_stock * prod.sale_price AS Potential_Revenue #make it so that the output name easy to understand
FROM products prod #we can put the short name after it to make it easier to write
;

 