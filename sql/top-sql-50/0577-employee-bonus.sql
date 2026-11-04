-- LeetCode 577: Employee Bonus
-- Original issue: https://github.com/fantome04/DB-homework/issues/11
-- Original submission: https://leetcode.com/problems/employee-bonus/submissions/1421175924/?envType=study-plan-v2&envId=top-sql-50

SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b
  ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;
