SELECT
    sum(i.Total) AS sum,
    e.FirstName || ' ' || e.LastName AS full_name
FROM Employee e
JOIN Customer c ON e.EmployeeId = c.SupportRepId
JOIN Invoice i ON i.CustomerId = c.CustomerId
GROUP BY c.SupportRepId
ORDER BY sum(i.Total) DESC
LIMIT 1;