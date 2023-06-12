/* Find the employees who have not processed any orders */

select e.first_name,e.last_name  from employees e left join orders o 
On e.employee_id = o.employee_id
where e.employee_id = Null;