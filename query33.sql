/*Find the suppliers who supply the top 5 most sold products*/

SELECT s.supplier_id, s.company_name, p.product_id, p.product_name, SUM(od.quantity) AS TotalQuantity
FROM suppliers s
JOIN products p ON s.supplier_id = p.supplier_id
JOIN order_details od ON p.product_id = od.product_id
GROUP BY s.supplier_id, s.company_name, p.product_id, p.product_name
ORDER BY TotalQuantity DESC
LIMIT 5;