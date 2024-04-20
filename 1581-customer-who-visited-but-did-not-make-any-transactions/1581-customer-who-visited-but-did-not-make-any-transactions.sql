SELECT v.customer_id, COUNT(v.customer_id) AS "count_no_trans"
FROM Visits v
LEFT JOIN transactions t
ON v.visit_id = t.visit_id
WHERE t.visit_id IS NULL
GROUP BY v.customer_id
ORDER BY COUNT(customer_id)

