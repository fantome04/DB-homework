-- LeetCode 1581: Customer Who Visited but Did Not Make Any Transactions
-- Original issue: https://github.com/fantome04/DB-homework/issues/9
-- Original submission: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/submissions/1421125444/?envType=study-plan-v2&envId=top-sql-50

SELECT v.customer_id, COUNT(*) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
  ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;
