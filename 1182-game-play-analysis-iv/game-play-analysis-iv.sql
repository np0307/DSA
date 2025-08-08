SELECT 
    ROUND(
        SUM(CASE WHEN a2.player_id IS NOT NULL THEN 1 ELSE 0 END) / COUNT(DISTINCT a1.player_id), 
        2
    ) AS fraction
FROM
    (SELECT player_id, MIN(event_date) AS first_login_date FROM Activity GROUP BY player_id) a1
LEFT JOIN 
    Activity a2
ON a1.player_id = a2.player_id AND a2.event_date = DATE_ADD(a1.first_login_date, INTERVAL 1 DAY);
