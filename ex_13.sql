SELECT
    count(i.InvoiceId) AS count,
    i.BillingCountry
FROM Invoice i
JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
GROUP BY BillingCountry;