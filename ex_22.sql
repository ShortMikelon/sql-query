SELECT
    BillingCountry,
    sum(Total)
FROM Invoice
GROUP BY BillingCountry
ORDER BY sum(Total) DESC;