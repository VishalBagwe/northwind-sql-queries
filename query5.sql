/*List the employees and the number of orders each employee has taken */

select e.first_name , e.last_name ,count(o.order_id) as "No.of_orders"
from employees e left join orders o 
On e.employee_id = o.employee_id
group by e.employee_id;