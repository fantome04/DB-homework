-- LeetCode 1683: Invalid Tweets
-- Original issue: https://github.com/fantome04/DB-homework/issues/6
-- Original submission: https://leetcode.com/problems/invalid-tweets/submissions/1421123992/?envType=study-plan-v2&envId=top-sql-50

SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content) > 15;
