-- Query 5:  Write a query that lists all the tracks that are not in one of the top 5 genres with longer duration in the database. 
-- Author: Kaylee Chen

SELECT track_id, name
From Tracks
WHERE genre_id NOT IN (
    SELECT genre_id
    FROM Tracks
    GROUP BY genre_id
    ORDER BY AVG(Milliseconds) DESC
    LIMIT 5
)