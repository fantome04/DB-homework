-- LeetCode 1934: Confirmation Rate
-- Original issue: https://github.com/fantome04/DB-homework/issues/13
-- Note: the issue currently points to a different LeetCode submission URL.

SELECT s.user_id,
       ROUND(AVG(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END), 2) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
  ON s.user_id = c.user_id
GROUP BY s.user_id;
