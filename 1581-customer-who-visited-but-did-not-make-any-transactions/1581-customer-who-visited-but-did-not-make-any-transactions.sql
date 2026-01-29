# Write your MySQL query statement below
select customer_id, count(*) as count_no_trans
FROM Visits v
LEFT JOIN Transactions t ON
v.visit_id = t.visit_id
Where t.visit_id is null
group by customer_id;