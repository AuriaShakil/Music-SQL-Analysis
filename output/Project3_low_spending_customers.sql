/* 
Query: Low-Spending Customers
Purpose: Find customers with the lowest total spend and fewest orders.
Business Insight: Candidates for nurture campaigns or re-engagement offers.
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
LEFT JOIN Invoice i
    ON c.CustomerId = i.CustomerId
GROUP BY
    c.CustomerId, c.FirstName, c.LastName, c.Country
ORDER BY
    TotalSpend ASC NULLS FIRST,  -- shows true low/no-spend first (SQLite treats NULLs last; if your DB errors, remove 'NULLS FIRST')
    Orders ASC
LIMIT 10;
If SQLite complains about NULLS FIRST, just use:

sql
Copy
Edit
ORDER BY (TotalSpend IS NOT NULL), TotalSpend ASC, Orders ASC