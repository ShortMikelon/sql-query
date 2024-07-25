SELECT
    p.Name AS playlist_name,
    count(*) AS count
FROM Playlist p
JOIN PlaylistTrack pt ON pt.PlaylistId = p.PlaylistId
GROUP BY p.Name;