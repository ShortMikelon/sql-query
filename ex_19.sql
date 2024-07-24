SELECT sum, full_name
FROM (
    SELECT
        sum(i.Total) AS sum,
        e.FirstName || ' ' || e.LastName AS full_name
    FROM Employee e
    JOIN Customer c ON e.EmployeeId = c.SupportRepId
    JOIN Invoice i ON i.CustomerId = c.CustomerId
    WHERE strftime("%Y", i.InvoiceDate) = '2010'
    GROUP BY e.FirstName || ' ' || e.LastName
) AS subquery_result
WHERE sum = (
    SELECT
        max(sub.sum)
    FROM (
        SELECT
            sum(i.Total) AS sum
        FROM Employee e
        JOIN Customer c ON e.EmployeeId = c.SupportRepId
        JOIN Invoice i ON i.CustomerId = c.CustomerId
        WHERE strftime("%Y", i.InvoiceDate) = '2010'
        GROUP BY e.FirstName || ' ' || e.LastName
    ) AS sub
);
