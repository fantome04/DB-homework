-- LeetCode 1527: Patients With a Condition
-- Original issue: https://github.com/fantome04/DB-homework/issues/38
-- Original submission: https://leetcode.com/problems/patients-with-a-condition/submissions/1422438314/?envType=study-plan-v2&envId=top-sql-50

SELECT patient_id, patient_name, conditions
FROM Patients
WHERE conditions LIKE 'DIAB1%'
   OR conditions LIKE '% DIAB1%';
