SELECT ROUND(COUNT(d2.min_order_date) / COUNT(DISTINCT d1.customer_id) * 100, 2) AS "immediate_percentage"
FROM delivery d1
LEFT JOIN (
    SELECT customer_id, MIN(order_date) AS min_order_date
    FROM delivery
    GROUP BY customer_id
    HAVING MIN(order_date) = MIN(customer_pref_delivery_date)
) d2 ON d1.customer_id = d2.customer_id
   AND d1.order_date = d2.min_order_date;
