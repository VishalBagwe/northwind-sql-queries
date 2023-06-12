/*Find the total sales for each year*/
SELECT YEAR(o.order_date) AS SalesYear, SUM(od.quantity * od.unit_price) AS TotalSales
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
GROUP BY SalesYear
ORDER BY SalesYear;