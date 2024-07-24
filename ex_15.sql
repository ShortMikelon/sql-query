SELECT
    t.Name AS track,
    a.title AS album,
    mt.name AS media_type,
    g.name AS genre
FROM Track t
JOIN Album a ON a.AlbumId = t.AlbumId
JOIN MediaType mt ON mt.MediaTypeId = t.MediaTypeId
JOIN Genre g ON g.GenreId = t.GenreId;