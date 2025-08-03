/* 
Query: Top Revenue-Generating Artists and Albums
Purpose: Identify which artists and albums generate the most revenue 
from the WSDA_Music database.
Business Insight: Helps determine key revenue contributors for strategic promotion.
Tables used:
- InvoiceLine: Links each track sold to an invoice
- Track: Links each sold track to an album
- Album: Contains album names and links to artists
- Artist: Contains artist names
*/

SELECT 
    ar.Name AS Artist, 
    al.Title AS Album, 
    SUM(il.UnitPrice * il.Quantity) AS TotalRevenue
FROM InvoiceLine il
JOIN Track t 
    ON il.TrackId = t.TrackId
JOIN Album al 
    ON t.AlbumId = al.AlbumId
JOIN Artist ar 
    ON al.ArtistId = ar.ArtistId
GROUP BY 
    ar.Name, 
    al.Title
ORDER BY 
    TotalRevenue DESC
LIMIT 10;
