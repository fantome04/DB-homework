-- LeetCode 1193: Monthly Transactions I
-- Original issue: https://github.com/fantome04/DB-homework/issues/21
-- Original submission: https://leetcode.com/problems/monthly-transactions-i/submissions/1422344664/?envType=study-plan-v2&envId=top-sql-50

SELECT DATE_FORMAT(trans_date, '%Y-%m') AS month,
       country,
       COUNT(*) AS trans_count,
       SUM(state = 'approved') AS approved_count,
       SUM(amount) AS trans_total_amount,
       SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions
GROUP BY month, country;
