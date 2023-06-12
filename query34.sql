/*Find the customers who have ordered products from all categories*/

SELECT c.customer_id, c.company_name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
JOIN categories ct ON p.category_id = ct.category_id
GROUP BY c.customer_id, c.company_name
HAVING COUNT(DISTINCT ct.category_id) = (SELECT COUNT(*) FROM Categories);