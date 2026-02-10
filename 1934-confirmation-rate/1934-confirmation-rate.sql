# Write your MySQL query statement below
SELECT 
    s.user_id,
    ROUND(
        COALESCE(
            1.0 * COUNT(CASE WHEN c.action = 'confirmed' THEN 1 END)
            / NULLIF(COUNT(c.user_id), 0),
            0
        ),
        2
    ) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
    ON s.user_id = c.user_id
GROUP BY s.user_id;
