/*Get the list of customers who have ordered ‘Chai’ product */

select c.customer_id,c.company_name ,p.product_name from customers c inner join orders o
On c.customer_id = o.customer_id
inner join order_details o_d 
On o.order_id = o_d.order_id
Inner join products p 
On o_d.product_id = p.product_id
where product_name = "Chai";