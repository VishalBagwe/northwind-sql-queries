/* Find the order with the highest total cost */

select order_id ,sum(unit_price * quantity - (unit_price * quantity * discount))
As "TotalNoOrders" from order_details 
group by order_id
Order by TotalNoOrders DESC;