# Join Use Cases


SELECT *
FROM ordered_items
;

SELECT *
FROM products
;


SELECT DISTINCT p.product_name, 
oi.unit_price, 
p.sale_price, 
p.units_in_stock,
p.sale_price - oi.unit_price AS profit,
(p.sale_price - oi.unit_price) * p.units_in_stock AS potential_profit
FROM ordered_items AS oi
JOIN products AS p # same as if we use USING(product_id)
	ON oi.product_id = p.product_id 
ORDER BY potential_profit DESC
;


SELECT *
FROM supplier_delivery_status
;

SELECT *
FROM ordered_items
;

SELECT *
FROM suppliers
;

SELECT *
FROM ordered_items AS oi
JOIN supplier_delivery_status AS sds
	ON oi.status = sds.order_status_id
JOIN suppliers AS s
	ON oi.shipper_id = s.supplier_id
;


SELECT oi.order_id, sds.name, oi.status, oi.shipped_date, s.name 
FROM ordered_items AS oi
JOIN supplier_delivery_status AS sds
	ON oi.status = sds.order_status_id
JOIN suppliers AS s
	ON oi.shipper_id = s.supplier_id
WHERE sds.name <> 'Delivered' # <> means 'is not'
AND YEAR(shipped_date) < YEAR(NOW()) - 2 # looking for the order that has been so long under 'shipped'
;


