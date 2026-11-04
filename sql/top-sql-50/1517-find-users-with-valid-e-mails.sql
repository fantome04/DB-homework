-- LeetCode 1517: Find Users With Valid E-Mails
-- Original issue: https://github.com/fantome04/DB-homework/issues/42
-- Original submission: https://leetcode.com/problems/find-users-with-valid-e-mails/submissions/1422442172/?envType=study-plan-v2&envId=top-sql-50

SELECT user_id, name, mail
FROM Users
WHERE mail REGEXP '^[A-Za-z][A-Za-z0-9_.-]*@leetcode[.]com$';
