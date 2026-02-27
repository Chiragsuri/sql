# Write your MySQL query statement below
select
    teacher_id,
    Count(DISTINCT subject_id) as cnt
FROM Teacher
GROUP BY teacher_id;