/*Find the employees who have processed more than 100 orders*/

SELECT e.employee_id, e.first_name, COUNT(o.order_id) AS TotalOrders
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
GROUP BY e.employee_id, e.first_name
HAVING COUNT(o.order_id) > 100;