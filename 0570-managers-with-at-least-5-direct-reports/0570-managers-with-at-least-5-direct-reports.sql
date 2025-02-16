SELECT b.name
FROM Employee a
INNER JOIN Employee b
ON a.managerId = b.id
GROUP BY b.name, b.id
HAVING COUNT(b.id) >= 5