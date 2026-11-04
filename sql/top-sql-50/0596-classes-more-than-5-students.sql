-- LeetCode 596: Classes More Than 5 Students
-- Original issue: https://github.com/fantome04/DB-homework/issues/27
-- Original submission: https://leetcode.com/problems/classes-more-than-5-students/submissions/1422396191/?envType=study-plan-v2&envId=top-sql-50

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(*) >= 5;
