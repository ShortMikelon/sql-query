SELECT
    sum(i.Total),
    e.FirstName || ' ' || e.LastName AS full_name
FROM Employee e
JOIN Customer c ON e.EmployeeId = c.SupportRepId
JOIN Invoice i ON i.CustomerId = c.CustomerId
GROUP BY e.FirstName || ' ' || e.LastName;
