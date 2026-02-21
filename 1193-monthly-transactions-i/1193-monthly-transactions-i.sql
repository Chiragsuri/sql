# Write your MySQL query statement below
select 
    (DATE_FORMAT(trans_date, '%Y-%m')) as month
    ,country
    ,count(*) as trans_count
    ,SUM(IF(state = 'approved', 1, 0)) as approved_count
    ,SUM(amount) as trans_total_amount
    ,SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) as approved_total_amount
FROM Transactions
GROUP BY month, country