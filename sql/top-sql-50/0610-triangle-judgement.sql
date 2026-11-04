-- LeetCode 610: Triangle Judgement
-- Original issue: https://github.com/fantome04/DB-homework/issues/33
-- Original submission: https://leetcode.com/problems/triangle-judgement/submissions/1422431098/?envType=study-plan-v2&envId=top-sql-50

SELECT x, y, z,
       CASE
           WHEN x + y > z
            AND x + z > y
            AND y + z > x THEN 'Yes'
           ELSE 'No'
       END AS triangle
FROM Triangle;
