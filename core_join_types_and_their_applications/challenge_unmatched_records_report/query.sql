-- Write your code here
SELECT c.customer_id, c.name AS customer_name, o.order_id, o.order_date,
CASE
 WHEN o.order_id IS NULL THEN 'Customer without orders'
WHEN c.customer_id IS NULL THEN 'Order without customer' ELSE 'Matched'
    END AS match_status
FROM customers c FULL OUTER JOIN orders o
ON c.customer_id=o.customer_id ORDER BY c.customer_id DESC;