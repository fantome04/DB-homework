-- LeetCode 1211: Queries Quality and Percentage
-- Original issue: https://github.com/fantome04/DB-homework/issues/20
-- Original submission: https://leetcode.com/problems/queries-quality-and-percentage/submissions/1422332047/?envType=study-plan-v2&envId=top-sql-50

SELECT query_name,
       ROUND(AVG(rating / position), 2) AS quality,
       ROUND(AVG(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100, 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;
