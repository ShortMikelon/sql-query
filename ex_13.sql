SELECT
    count(InvoiceId) AS count,
    BillingCountry
FROM Invoice
GROUP BY BillingCountry;