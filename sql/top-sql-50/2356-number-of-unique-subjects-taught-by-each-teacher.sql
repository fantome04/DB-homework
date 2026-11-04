-- LeetCode 2356: Number of Unique Subjects Taught by Each Teacher
-- Original issue: https://github.com/fantome04/DB-homework/issues/24
-- Original submission: https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/submissions/1422380100/?envType=study-plan-v2&envId=top-sql-50

SELECT teacher_id,
       COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id;
