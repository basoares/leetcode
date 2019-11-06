SELECT C.Name AS Customers
  FROM Customers C
  LEFT JOIN Orders O
    ON O.CustomerId = C.Id
 WHERE O.CustomerId IS NULL


/*

    select Name as Customers 
     from Customers 
    where Id not in (
                      select a.Id  
                        from Orders a )

*/
