/* 
Query: Top-Spending Customers
Purpose: Rank customers by total spend and show orders + AOV.
Business Insight: Identify high-value customers for targeted perks and retention.
Tables: Customer (who), Invoice (orders + totals)
*/
SELECT
    c.CustomerId,
    c.FirstName || ' ' || c.LastName AS CustomerName,
    c.Country,
    COUNT(DISTINCT i.InvoiceId) AS Orders,
    ROUND(SUM(i.Total), 2) AS TotalSpend,
    ROUND(AVG(i.Total), 2) AS AvgOrderValue
FROM Customer c
JOIN Invoice i
    ON c.CustomerId = i.CustomerId
GROUP BY
    c.CustomerId, c.FirstName, c.LastName, c.Country
ORDER BY
    TotalSpend DESC
LIMIT 10;
