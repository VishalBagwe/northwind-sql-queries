/*Find the total revenue for the year 2016*/
SELECT SUM(od.quantity * od.unit_price) AS TotalRevenue
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
WHERE YEAR(o.order_date) = 2016;