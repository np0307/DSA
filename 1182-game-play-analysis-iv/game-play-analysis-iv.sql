SELECT 
    ROUND(
        COUNT(DISTINCT CASE 
            WHEN EXISTS (
                SELECT 1 
                FROM Activity a2 
                WHERE a2.player_id = a1.player_id 
                AND a2.event_date = DATE_ADD(a1.first_login, INTERVAL 1 DAY)
            ) 
            THEN a1.player_id 
            END
        ) * 1.0 / COUNT(*), 2
    ) AS fraction
FROM (
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
) a1;
