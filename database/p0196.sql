DELETE p1 
  FROM Person p1
 INNER JOIN Person p2
    ON p2.Email = p1.Email
   AND p2.Id < p1.Id
