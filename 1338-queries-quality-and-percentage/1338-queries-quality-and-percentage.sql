SELECT query_name AS "query_name",
ROUND(AVG(rating/position), 2) AS "quality",
ROUND(SUM(case when rating < 3 then 1 else 0 end)/COUNT(query_name) * 100, 2) AS "poor_query_percentage"
FROM Queries
GROUP BY query_name