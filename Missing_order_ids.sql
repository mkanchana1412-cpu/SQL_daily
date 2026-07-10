SELECT t1.order_id + 1 AS missing_order_id
FROM orders t1
LEFT JOIN orders t2
ON t1.order_id + 1 = t2.order_id
WHERE t2.order_id IS NULL;
