/*List the top 5 employees who have processed the most orders */

select e.first_name , e.last_name, count(o.order_id) As "orders" from employees e inner join orders o 
On e.employee_id = o.employee_id
Group by e.employee_id
order by orders  desc limit 5;