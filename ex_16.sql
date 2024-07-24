SELECT
    InvoiceId,
    count(InvoiceLineId) AS count
FROM InvoiceLine
GROUP BY InvoiceId;