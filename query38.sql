/* Classify employees based on the number of orders they have processed such that NumberOfOrders > 100 Then PerformanceCategory as ‘High Performing’. If NumberOfOrders>50 Then ‘Medium Performing’ and else ‘Lower Performing’
Here is the sample output */

select e.First_name, e.Last_name ,count(o.order_id) As "NumberOfOrders" ,
case 
when count(o.order_id) > 100 then 'High Performing'
when count(o.order_id) > 50 And count(o.order_id) <100 then 'Medium Performing'
else 'Lower Performing'
end As PerformanceCategory
from employees e inner join  orders o
On e.employee_id = o.employee_id
group by e.employee_id
Order by e.First_name ;