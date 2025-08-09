/* 
Query: Track Popularity vs. Price
Purpose: Examine relationship between price per track and total units sold.
Business Insight: Identifies how pricing impacts track sales for strategic pricing decisions.
Tables Used:
- InvoiceLine: sales transactions
- Track: track details including price
*/

SELECT 
    t.Name AS TrackName,
    t.UnitPrice AS PricePerTrack,
    SUM(il.Quantity) AS TotalUnitsSold
FROM InvoiceLine il
JOIN Track t 
    ON il.TrackId = t.TrackId
GROUP BY 
    t.Name,
    t.UnitPrice
ORDER BY 
    TotalUnitsSold DESC;