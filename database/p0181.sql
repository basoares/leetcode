SELECT E.Name AS Employee
  FROM Employee E
 INNER JOIN Employee M
    ON M.Id = E.ManagerId
 WHERE M.Salary < E.Salary
