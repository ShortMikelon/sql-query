SELECT
	i.InvoiceId,
	e.FirstName || ' ' || e.LastName AS full_name
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE e.Title LIKE '%sales%' OR '%agent%';