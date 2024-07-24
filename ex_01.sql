SELECT 
	FirstName || ' ' || LastName As full_name, 
	CustomerId, 
	Country 
FROM Customer
WHERE country != 'USA';