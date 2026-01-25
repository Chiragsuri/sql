# Write your MySQL query statement below
Select u.unique_id, e.name from Employees as e 
left Join EmployeeUNI as u
ON e.id = u.id;