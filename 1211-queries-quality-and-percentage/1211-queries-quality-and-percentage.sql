# Write your MySQL query statement below
select 
    query_name
    ,ROUND(AVG(rating * 1.0 / position), 2) as quality
    ,ROUND(AVG(rating < 3) * 100, 2) as poor_query_percentage
FROM Queries
GROUP BY query_name
;
