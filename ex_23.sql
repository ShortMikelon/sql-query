SELECT 
    t.Name,
    sum(Quantity) AS quantity
FROM InvoiceLine il
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
JOIN Track t ON il.TrackId = t.TrackId
WHERE i.InvoiceDate LIKE '2013%'
GROUP BY t.Name
ORDER BY sum(quantity) DESC;