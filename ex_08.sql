SELECT 
    strftime('%Y', InvoiceDate) AS year,
    sum(Total) AS invoice_sum
FROM Invoice
GROUP BY strftime('%Y', InvoiceDate)
HAVING strftime('%Y', InvoiceDate) = '2009' OR strftime('%Y', InvoiceDate) = '2011';