/* Classify products based on their sales volume such that TotalQuantity > 1000 Then SalesCategory as 
‘High Sales’. If TotalQuantity>500 Then ‘Medium Sales’ and else ‘Lower Sales’ */

select p.product_name ,sum(o.quantity) as "TotalQuantity" ,
case
when sum(o.quantity) > 1000 then "High Sales"
when sum(o.quantity) > 500 ANd sum(o.quantity) <= 1000 then "Medium Sales"
else "Lower Sales"
END AS SalesCategory
from products p inner join order_details o 
On p.product_id = o.product_id 
group by p.product_id
order by p.product_name;