/* Total quantity of each product sold in increasing order of product_id */
SELECT product_id, SUM(quantity) AS total_quantity
FROM order_details
GROUP BY product_id;