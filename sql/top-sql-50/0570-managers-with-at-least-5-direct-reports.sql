-- LeetCode 570: Managers with at Least 5 Direct Reports
-- Original issue: https://github.com/fantome04/DB-homework/issues/15
-- Original submission: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/submissions/1422070025/?envType=study-plan-v2&envId=top-sql-50

SELECT e.name
FROM Employee e
JOIN Employee r
  ON e.id = r.managerId
GROUP BY e.id, e.name
HAVING COUNT(*) >= 5;
