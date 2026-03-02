# Write your MySQL query statement below
-- select a.class from Courses a
-- JOIN (Select class, count(student) as count from Courses
-- group by class) s
-- ON a.class = s.class and s.count >= 5
-- Group by class

-- With Having function
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;