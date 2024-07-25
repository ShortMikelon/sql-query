SELECT
    il.InvoiceId AS invoice_id,
    t.Name AS name
FROM InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
GROUP BY t.Name;