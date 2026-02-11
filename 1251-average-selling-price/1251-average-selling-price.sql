# Write your MySQL query statement below
select p.product_id, Round(COALESCE((SUM(p.price * u.units)/NULLIF(sum(u.units), 0)), 0), 2) as average_price
from Prices p 
left Join UnitsSold u ON
p.product_id = u.product_id and u.purchase_date BETWEEN p.start_date AND p.end_date
group by p.product_id