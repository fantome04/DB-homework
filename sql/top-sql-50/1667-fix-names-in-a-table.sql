-- LeetCode 1667: Fix Names in a Table
-- Original issue: https://github.com/fantome04/DB-homework/issues/37
-- Original submission: https://leetcode.com/problems/fix-names-in-a-table/submissions/1422437714/?envType=study-plan-v2&envId=top-sql-50

SELECT user_id,
       CONCAT(
           UPPER(LEFT(name, 1)),
           LOWER(SUBSTRING(name, 2))
       ) AS name
FROM Users
ORDER BY user_id;
