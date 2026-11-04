-- LeetCode 1378: Replace Employee ID With The Unique Identifier
-- Original issue: https://github.com/fantome04/DB-homework/issues/7
-- Original submission: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/submissions/1421124477/?envType=study-plan-v2&envId=top-sql-50

SELECT eu.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI eu
  ON e.id = eu.id;
