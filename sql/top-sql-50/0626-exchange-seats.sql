-- LeetCode 626: Exchange Seats
-- Original issue: https://github.com/fantome04/DB-homework/issues/35
-- Original submission: https://leetcode.com/problems/exchange-seats/submissions/1422435853/?envType=study-plan-v2&envId=top-sql-50

SELECT
    CASE
        WHEN id % 2 = 1 AND id = (SELECT MAX(id) FROM Seat) THEN id
        WHEN id % 2 = 1 THEN id + 1
        ELSE id - 1
    END AS id,
    student
FROM Seat
ORDER BY id;
