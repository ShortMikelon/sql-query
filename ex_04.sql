SELECT
	FirstName || ' ' || LastName AS full_name
FROM Employee
WHERE title LIKE '%sales%' AND title LIKE '%agent%';