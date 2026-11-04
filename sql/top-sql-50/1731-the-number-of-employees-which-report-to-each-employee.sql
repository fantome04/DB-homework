-- LeetCode 1731: The Number of Employees Which Report to Each Employee
-- Original issue: https://github.com/fantome04/DB-homework/issues/31
-- Original submission: https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/submissions/1422424921/?envType=study-plan-v2&envId=top-sql-50

SELECT m.employee_id,
       m.name,
       COUNT(e.employee_id) AS reports_count,
       ROUND(AVG(e.age)) AS average_age
FROM Employees m
JOIN Employees e
  ON m.employee_id = e.reports_to
GROUP BY m.employee_id, m.name
ORDER BY m.employee_id;
