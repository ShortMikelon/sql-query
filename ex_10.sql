SELECT
    InvoiceId, count(InvoiceId) AS count
FROM InvoiceLine
GROUP BY InvoiceId;