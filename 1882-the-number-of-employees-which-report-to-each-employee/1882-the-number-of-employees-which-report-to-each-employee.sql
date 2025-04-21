SELECT employee_id, name, reports_count, average_age
FROM (SELECT reports_to, COUNT(reports_to) as reports_count , ROUND(AVG(age)) as average_age 
FROM Employees
GROUP BY reports_to
HAVING COUNT(reports_to) >= 1) e1
JOIN employees e2
ON e1.reports_to = e2.employee_id
ORDER BY employee_id
 


