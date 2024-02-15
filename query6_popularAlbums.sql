-- Query 6:  Define an insightful query on your own that involves at least three tables
-- Finds the most popular albums
-- Author: Kaylee Chen

SELECT
    Albums.album_id,
    Albums.title AS albumTitle,
    Artists.name AS artistName,
    SUM(InvoiceItems.quantity) AS totalTracksSold
FROM Albums
JOIN Tracks ON Albums.album_id = Tracks.album_id
JOIN InvoiceItems ON Tracks.track_id = InvoiceItems.track_id
JOIN Artists ON Albums.artist_id = Artists.artist_id
GROUP BY Albums.album_id
ORDER BY totalTracksSold DESC
LIMIT 10;