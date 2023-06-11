/*Find the products that have never been ordered*/
SELECT p.product_id, p.product_name
FROM products p
LEFT JOIN orders o ON p.product_id = o.order_id
WHERE o.order_id IS NULL;