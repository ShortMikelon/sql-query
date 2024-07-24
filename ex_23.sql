SELECT 
    (SELECT Name FROM Track WHERE TrackId = InvoiceLine.TrackId) AS track,
    sum(Quantity) AS quantity
FROM InvoiceLine
GROUP BY TrackId
ORDER BY sum(quantity) DESC;