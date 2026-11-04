-- LeetCode 1729: Find Followers Count
-- Original issue: https://github.com/fantome04/DB-homework/issues/28
-- Original submission: https://leetcode.com/problems/find-followers-count/submissions/1422399771/?envType=study-plan-v2&envId=top-sql-50

SELECT user_id,
       COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id;
