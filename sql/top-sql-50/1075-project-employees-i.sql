-- LeetCode 1075: Project Employees I
-- Original issue: https://github.com/fantome04/DB-homework/issues/18
-- Original submission: https://leetcode.com/problems/project-employees-i/submissions/1422321385/?envType=study-plan-v2&envId=top-sql-50

SELECT p.project_id,
       ROUND(AVG(e.experience_years), 2) AS average_years
FROM Project p
JOIN Employee e
  ON p.employee_id = e.employee_id
GROUP BY p.project_id;
