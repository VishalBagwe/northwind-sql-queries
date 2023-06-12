/*Find the most common shipping country*/
SELECT ship_country, COUNT(*) AS CountryCount
FROM orders
GROUP BY ship_country
ORDER BY CountryCount DESC
LIMIT 1;