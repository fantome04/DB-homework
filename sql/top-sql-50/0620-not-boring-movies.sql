-- LeetCode 620: Not Boring Movies
-- Original issue: https://github.com/fantome04/DB-homework/issues/16
-- Original submission: https://leetcode.com/problems/not-boring-movies/submissions/1422275292/?envType=study-plan-v2&envId=top-sql-50

SELECT *
FROM Cinema
WHERE id % 2 = 1
  AND description <> 'boring'
ORDER BY rating DESC;
