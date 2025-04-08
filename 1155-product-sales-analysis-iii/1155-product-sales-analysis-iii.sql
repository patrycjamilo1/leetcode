SELECT s1.product_id, s1.year AS first_year, s1.quantity, s1.price
FROM sales s1
WHERE (s1.product_id, s1.year) IN (
    SELECT product_id, MIN(year)
    FROM sales
    GROUP BY product_id
);
