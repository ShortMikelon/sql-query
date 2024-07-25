SELECT
    il.InvoiceId AS invoice_id,
    t.Name AS tracl_name,
	a.Name AS artist_name
FROM InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
JOIN Album al ON al.AlbumId = t.AlbumId
JOIN Artist a ON a.Artistid = al.ArtistId
GROUP BY t.Name;