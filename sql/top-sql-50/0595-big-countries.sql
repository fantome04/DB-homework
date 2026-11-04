-- LeetCode 595: Big Countries
-- Original issue: https://github.com/fantome04/DB-homework/issues/4
-- Original submission: https://leetcode.com/problems/big-countries/submissions/1421123082/?envType=study-plan-v2&envId=top-sql-50

SELECT name, population, area
FROM World
WHERE area >= 3000000
   OR population >= 25000000;
