;WITH CTE AS
(
  SELECT Id, Salary, DENSE_RANK() OVER (ORDER BY Salary DESC) DS
    FROM Employee
)
SELECT MAX(CASE WHEN DS = 2 THEN Salary END) AS SecondHighestSalary
  FROM CTE
