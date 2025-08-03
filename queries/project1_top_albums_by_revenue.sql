/* 
Query: Top Revenue-Generating Albums
Purpose: Identify which albums generate the most revenue overall.
Business Insight: Highlights the highest-earning albums for inventory or marketing focus.
Tables used:
- InvoiceLine: Links each track sold to an invoice
- Track: Links each sold track to an album
- Album: Contains album names and links to artists
- Artist: Contains artist names
*/

SELECT 
    al.Title AS Album, 
    ar.Name AS Artist, 
    SUM(il.UnitPrice * il.Quantity) AS TotalRevenue
FROM InvoiceLine il
JOIN Track t 
    ON il.TrackId = t.TrackId
JOIN Album al 
    ON t.AlbumId = al.AlbumId
JOIN Artist ar 
    ON al.ArtistId = ar.ArtistId
GROUP BY 
    al.Title, 
    ar.Name
ORDER BY 
    TotalRevenue DESC
LIMIT 10;
