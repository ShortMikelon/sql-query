SELECT
    count(*) AS count,
    p.Name AS playlist_name
FROM Playlist p
JOIN PlaylistTrack pt ON pt.PlaylistId = p.PlaylistId
GROUP BY p.Name;