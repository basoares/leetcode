CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        SELECT MAX(CASE WHEN DS = @N THEN Salary END)
          FROM 
          (
           SELECT Id, Salary, DENSE_RANK() OVER (ORDER BY Salary DESC) DS
             FROM Employee
          ) SalaryRank
    );
END
