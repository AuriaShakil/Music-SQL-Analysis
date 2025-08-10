/* 
Query: In-Playlist vs Not - Sales Performance
Purpose: Compare sales (units and revenue) for tracks included in any playlist vs tracks never in a playlist.
Business Insight: Validates whether playlist curation is associated with stronger sales.
Tables used:
- PlaylistTrack: links tracks to playlists
- Track: track details
- InvoiceLine: sales transactions (quantity and revenue)
*/

SELECT
  CASE 
    WHEN EXISTS (
      SELECT 1 
      FROM PlaylistTrack pt 
      WHERE pt.TrackId = t.TrackId
    ) THEN 'In Playlist'
    ELSE 'Not in Playlist'
  END AS InPlaylistFlag,
  COUNT(DISTINCT t.TrackId) AS UniqueTracks,
  SUM(il.Quantity) AS TotalUnits,
  ROUND(SUM(il.UnitPrice * il.Quantity), 2) AS TotalRevenue
FROM InvoiceLine il
JOIN Track t 
  ON il.TrackId = t.TrackId
GROUP BY 
  CASE 
    WHEN EXISTS (SELECT 1 FROM PlaylistTrack pt WHERE pt.TrackId = t.TrackId) 
    THEN 'In Playlist' ELSE 'Not in Playlist' END
ORDER BY TotalRevenue DESC;
