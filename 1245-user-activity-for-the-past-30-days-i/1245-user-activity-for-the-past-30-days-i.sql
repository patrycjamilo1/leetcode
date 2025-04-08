SELECT to_char(activity_date, 'YYYY-MM-DD') AS "day", 
COUNT(DISTINCT user_id) AS "active_users"
FROM activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY activity_date
ORDER BY activity_date
