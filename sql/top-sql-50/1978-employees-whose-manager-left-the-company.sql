-- LeetCode 1978: Employees Whose Manager Left the Company
-- Original issue: https://github.com/fantome04/DB-homework/issues/34
-- Original submission: https://leetcode.com/problems/employees-whose-manager-left-the-company/submissions/1422433622/?envType=study-plan-v2&envId=top-sql-50

SELECT employee_id
FROM Employees
WHERE salary < 30000
  AND manager_id IS NOT NULL
  AND manager_id NOT IN (SELECT employee_id FROM Employees)
ORDER BY employee_id;
