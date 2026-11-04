-- LeetCode 1148: Article Views I
-- Original issue: https://github.com/fantome04/DB-homework/issues/5
-- Original submission: https://leetcode.com/problems/article-views-i/submissions/1421123548/?envType=study-plan-v2&envId=top-sql-50

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id;
