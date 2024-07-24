SELECT
    count(c.SupportRepId) AS count,
    e.FirstName || ' ' || e.LastName AS full_name
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
GROUP BY e.FirstName || ' ' || e.LastName;
