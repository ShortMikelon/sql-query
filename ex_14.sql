SELECT
    p.PlaylistId AS playlist_id,
    count(t.TrackId) AS count
FROM Playlist p
JOIN PlaylistTrack pt ON pt.PlaylistId = p.PlaylistId
JOIN Track t ON t.TrackId = pt.TrackId
GROUP BY p.PlaylistId;