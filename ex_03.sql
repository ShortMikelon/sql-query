SELECT 
	c.FirstName || ' ' || c.LastName AS full_name,
	i.InvoiceId,
	i.InvoiceDate,
	i.BillingCountry
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
WHERE c.Country = 'Brazil';