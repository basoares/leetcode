;WITH CTE AS
(
    SELECT e.Name AS Employee, e.Salary, d.Name AS Department, 
           DENSE_RANK() OVER (PARTITION BY e.DepartmentId ORDER BY Salary DESC) DS
      FROM Employee e
     INNER JOIN Department d
        ON D.Id = e.DepartmentId
)
SELECT Department, Employee, Salary
  FROM CTE
 WHERE DS = 1
