SELECT a.id
FROM Weather a
INNER JOIN Weather b
ON a.recordDate = b.recordDate + 1
WHERE b.temperature < a.temperature 
