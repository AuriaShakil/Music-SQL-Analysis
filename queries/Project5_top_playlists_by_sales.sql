/* 
Query: Top Playlists by Sales
Purpose: Rank playlists by total units and revenue of their included tracks, plus average units per track.
Business Insight: Identifies high-impact playlists and guides curation strategy.
Tables used:
- Playlist: playlist names/ids
- PlaylistTrack: links playlists to tracks
- Track: track details
- InvoiceLine: sales transactions (joined via Track)
Note: A track may appear in multiple playlists; sales count toward each playlist it is in.
*/

SELECT
  p.Name AS Playlist,
  COUNT(DISTINCT t.TrackId) AS TracksInPlaylist,
  COALESCE(SUM(il.Quantity), 0) AS TotalUnits,
  ROUND(COALESCE(SUM(il.UnitPrice * il.Quantity), 0), 2) AS TotalRevenue,
  ROUND(1.0 * COALESCE(SUM(il.Quantity), 0) / NULLIF(COUNT(DISTINCT t.TrackId), 0), 2) AS UnitsPerTrack
FROM Playlist p
JOIN PlaylistTrack pt 
  ON p.PlaylistId = pt.PlaylistId
JOIN Track t 
  ON pt.TrackId = t.TrackId
LEFT JOIN InvoiceLine il 
  ON il.TrackId = t.TrackId
GROUP BY p.PlaylistId, p.Name
ORDER BY TotalUnits DESC, TotalRevenue DESC;