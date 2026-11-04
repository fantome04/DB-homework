-- LeetCode 1633: Percentage of Users Attended a Contest
-- Original issue: https://github.com/fantome04/DB-homework/issues/19
-- Original submission: https://leetcode.com/problems/percentage-of-users-attended-a-contest/submissions/1422324238/?envType=study-plan-v2&envId=top-sql-50

SELECT r.contest_id,
       ROUND(COUNT(r.user_id) * 100.0 / (SELECT COUNT(*) FROM Users), 2) AS percentage
FROM Register r
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id;
