SELECT t.Request_at AS Day,
       ROUND(COUNT(CASE WHEN t.Status IN ('cancelled_by_driver', 'cancelled_by_client') THEN t.Id END) / CONVERT(FLOAT, COUNT(t.Id)), 2) AS "Cancellation Rate"
  FROM Trips t
 INNER JOIN Users c
    ON c.Users_Id = t.Client_Id
   AND c.Banned = 'No'
   AND c.Role = 'client'
 INNER JOIN Users d
    ON d.Users_Id = t.Driver_Id
   AND d.Banned = 'No'
   AND d.Role = 'driver'
 WHERE t.Request_At BETWEEN '2013-10-01' AND '2013-10-03'
 GROUP BY t.Request_at

