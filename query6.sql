/*Get the customers who have placed more than 10 orders*/

SELECT c.customer_id, c.company_name, COUNT(o.order_id) AS NumberOfOrders
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.company_name
HAVING COUNT(o.order_id) > 10;