-- LeetCode 197: Rising Temperature
-- Original issue: https://github.com/fantome04/DB-homework/issues/14
-- Original submission: https://leetcode.com/problems/rising-temperature/submissions/1422064863/?envType=study-plan-v2&envId=top-sql-50

SELECT w1.id
FROM Weather w1
JOIN Weather w2
  ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;
