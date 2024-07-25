SELECT 
    t.Name AS track,
    count(il.Quantity) AS quantity
FROM InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
GROUP BY t.Name
ORDER BY count(quantity) DESC
LIMIT 5;