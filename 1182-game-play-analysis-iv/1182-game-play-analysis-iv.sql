SELECT 
COALESCE(ROUND(SUM(COUNT(player_id)/(SELECT COUNT(DISTINCT player_id) FROM activity)), 2), 0) AS "fraction"
FROM Activity
WHERE (player_id, event_date) IN (
    SELECT player_id, MIN(event_date) + 1
    FROM Activity
    GROUP BY player_id
)
GROUP BY player_id