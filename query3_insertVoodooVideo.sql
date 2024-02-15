-- Query 3:  Insert another video for the track "Voodoo", assuming that you don't know the TrackId, so your insert query should specify the TrackId directly.
-- Author: Kaylee Chen

INSERT INTO MusicVideo (track_id, videoDirector)
    SELECT track_id, "Voodoo Director"
    FROM Tracks
    WHERE name == "Voodoo";