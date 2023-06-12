/* Find the top 3 customers who have ordered the most products */

select c.company_name , count(o.order_id) as "totalOrders" from customers c inner join orders o 
On c.customer_id = o.customer_id
group by c.customer_id
order by totalOrders DESC Limit 3;