-- LeetCode 584: Find Customer Referee
-- Original issue: https://github.com/fantome04/DB-homework/issues/3
-- Original submission: https://leetcode.com/problems/find-customer-referee/submissions/1421121833/?envType=study-plan-v2&envId=top-sql-50

SELECT name
FROM Customer
WHERE referee_id <> 2 OR referee_id IS NULL;
