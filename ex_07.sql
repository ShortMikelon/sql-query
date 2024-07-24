SELECT
	i.total,
	c.FirstName || ' ' || c.LastName AS customer_full_name,
	i.BillingCountry,
	e.FirstName || ' ' || e.LastName AS employee_full_name
FROM Customer c
JOIN Invoice i ON i.CustomerId = c.CustomerId
JOIN Employee e ON e.EmployeeId = c.SupportRepId
WHERE title LIKE '%sales%' OR '%agent%';