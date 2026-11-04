-- LeetCode 1789: Primary Department for Each Employee
-- Original issue: https://github.com/fantome04/DB-homework/issues/32
-- Original submission: https://leetcode.com/problems/primary-department-for-each-employee/submissions/1422428006/?envType=study-plan-v2&envId=top-sql-50

SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'
   OR employee_id IN (
       SELECT employee_id
       FROM Employee
       GROUP BY employee_id
       HAVING COUNT(*) = 1
   );
