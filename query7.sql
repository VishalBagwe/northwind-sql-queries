/*Get the top 5 most sold products*/
SELECT p.product_id, p.product_name, SUM(o.quantity) AS TotalQuantitySold
FROM Products p
INNER JOIN order_details o ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
ORDER BY TotalQuantitySold DESC
LIMIT 5;