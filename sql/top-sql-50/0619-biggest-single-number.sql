-- LeetCode 619: Biggest Single Number
-- Original issue: https://github.com/fantome04/DB-homework/issues/29
-- Original submission: https://leetcode.com/problems/biggest-single-number/submissions/1422407307/?envType=study-plan-v2&envId=top-sql-50

SELECT MAX(num) AS num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) = 1
) AS singles;
