/*Find the customer who has ordered the most ‘Chai’ product*/
SELECT c.customer_id, c.company_name, COUNT(od.order_id) AS TotalChaiOrders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
WHERE p.product_name = 'Chai'
GROUP BY c.customer_id, c.company_name
ORDER BY TotalChaiOrders DESC
LIMIT 1;