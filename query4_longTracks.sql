-- Query 4:  Write a query that lists all the customers that listen to longer-than-average tracks, excluding the tracks that are longer than 15 minutes. 
-- Author: Kaylee Chen

SELECT DISTINCT customer_id
FROM InvoiceItems JOIN Tracks ON InvoiceItems.track_id = Tracks.track_id
WHERE Milliseconds < 900000 AND Milliseconds > (SELECT AVG(Milliseconds) FROM Tracks)