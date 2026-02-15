# Write your MySQL query statement below
select p.project_id, ROUND(IFNULL(avg(e.experience_years), 0), 2) as average_years
from Project p
INNER JOIN Employee e
ON p.employee_id = e.employee_id
group by p.project_id;