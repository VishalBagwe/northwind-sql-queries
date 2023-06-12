/*Find all employees who report to ‘Andrew Fuller’ */

select e.employee_id, e.first_name,e.last_name
from employees e 
where e.reports_to =  (select e1.employee_id
from employees e1 
where e1.first_name = 'Andrew' and e1.last_name = 'Fuller' );