# 🎵 WSDA Music SQL Analysis – Projects 1 to 5  

## 📊 About This Repository  
This repository showcases five SQL analysis projects conducted on the WSDA Music database. Each project simulates a real-world business question relevant to the music industry and demonstrates how **data-driven insights** can inform **strategic decisions** in marketing, pricing, and product management.  

Designed with a consulting and business analytics focus, these projects highlight:  
- Business problem identification and data-driven solution design  
- SQL querying skills (joins, aggregation, filtering, ordering)  
- Translating technical analysis into strategic recommendations  
- Delivering clean, reproducible work with clear documentation and outputs  



## 📝 Projects  

### **Project 1 – Top Revenue-Generating Artists and Albums**  
**Goal:** Identify which artists and albums generate the highest revenue.  
**Business Impact:** Enables targeted marketing campaigns and resource allocation to high-performing artists and albums.  
**Technical Skills Used:** Multi-table `JOIN`s, `SUM()` for revenue calculation, `GROUP BY` album/artist, `ORDER BY` revenue descending, `LIMIT` for top results.  

**Queries:**  
- [project1_top_albums_by_revenue.sql](queries/project1_top_albums_by_revenue.sql)  
- [project1_top_artists_and_albums_by_revenue.sql](queries/project1_top_artists_and_albums_by_revenue.sql)  

**Outputs:**  
- [project1_top_albums_by_revenue.csv](output/project1_top_albums_by_revenue.csv)  
- [project1_top_artists_and_albums_by_revenue.csv](output/project1_top_artists_and_albums_by_revenue.csv)
  
**Sample Output Highlights:**
- **Top Album:** *Mix It Up* by *Constancy* – $36.81 revenue  
- **Top Artist & Album Combo:** *Constancy* with *Mix It Up* – $36.81 revenue  
- Other high performers include *Flirt* by *Nathanael Healey* and *Harness Partnerships* by *Barstow*.  


### **Project 2 – Genre Profitability and Growth Trends Over Time**  
**Goal:** Measure yearly revenue by genre and track top genres per year.  
**Business Impact:** Identifies emerging genres to guide strategic marketing investments and content curation.  
**Technical Skills Used:** Common Table Expressions (CTE), multi-table `JOIN`s, `strftime()` for date extraction, `SUM()` for revenue aggregation, subquery filtering with `MAX()`, `GROUP BY` year/genre, `ORDER BY` year/revenue.

**Queries:**  
- [project2_Top Genre each year](queries/project2_Top%20Genre%20each%20year)  
- [project2_yearly_revenue_by_genre](queries/project2_yearly_revenue_by_genre)    

**Outputs:**  
- [project2_top_genre_each_year.csv](output/project2_top_genre_each_year.csv)  
- [project2_yearly_revenue_by_genre.csv](output/project2_yearly_revenue_by_genre.csv)
  
**Sample Output Highlights:**
- **Consistently Top Genre:** Rock (2009 revenue $176.22, 2010 $158.40, 2011 $157.42)  
- Detailed breakdown includes Latin, Metal, and other genres by year. 


### **Project 3 – Customer Segmentation by Spending Behavior**  
**Goal:** Segment customers into top spenders and low spenders.  
**Business Impact:** Supports loyalty program development and personalized promotions for high-value customers.  
**Technical Skills Used:** `LEFT JOIN` to include zero-spend customers, `JOIN` for matching customers with invoices, `COUNT(DISTINCT ...)` for orders, `SUM()` and `AVG()` for spend metrics, `ROUND()` for formatting, `ORDER BY` spend/orders, `LIMIT` for top results.  

**Queries:**  
- [project3_top_spending_customers.sql](queries/project3_top_spending_customers.sql)  
- [project3_low_spending_customers.sql](queries/project3_low_spending_customers.sql)  

**Outputs:**  
- [project3_low_spending_customers.csv](output/project3_low_spending_customers.csv)  
- [project3_top_spending_customers.csv](output/project3_top_spending_customers.csv

**Sample Output Highlights:**
- **Low Spenders:** Example – *Puja Srivastava* (India) spent $36.64 over 6 orders, average $6.11/order  
- **Top Spenders:** Example – *John Doeein* spent $1000.86 in a single order  
- Insights help target loyalty programs and upselling opportunities.   
  

### **Project 4 – Track Popularity vs. Price Elasticity**  
**Goal:** Analyze the correlation between track price and total sales.  
**Business Impact:** Informs optimal pricing strategies to maximize revenue without reducing demand.  
**Technical Skills Used:** `JOIN` for linking sales to track details, `SUM()` for total units sold, `GROUP BY` track name and price, `ORDER BY` units sold.

**Query:**  
- [project4_track_price_vs_sales.sql](queries/project4_track_price_vs_sales.sql)  

**Output:**  
- [project4_track_price_vs_sales.csv](output/project4_track_price_vs_sales.csv)
  
**Sample Output Highlights:**
- Tracks like *Latlux* and *Tres-Zap* priced at $0.99 sold 19 units each  
- Identifies the balance point between price and sales volume.  


### **Project 5 – Playlist Influence on Sales**  
**Goal:** Compare sales for tracks in playlists vs. not in playlists and rank top-performing playlists.  
**Business Impact:** Validates the role of curated playlists as a driver for music sales and audience engagement.  
**Technical Skills Used:** `CASE WHEN EXISTS` for conditional grouping, nested subqueries, `COUNT(DISTINCT ...)`, `SUM()` for revenue/units, `ROUND()` for formatting, multiple `JOIN`s across playlist/track/sales tables, division with `NULLIF` for per-track metrics, `ORDER BY` revenue/units.

**Queries:**  
- [project5_playlist_influence_overall.sql](queries/project5_playlist_influence_overall.sql)  
- [project5_top_playlists_by_sales.sql](queries/project5_top_playlists_by_sales.sql)  

**Outputs:**  
- [project5_playlist_influence_overall.csv](output/project5_playlist_influence_overall.csv)  
- [project5_top_playlists_by_sales.csv](output/project5_top_playlists_by_sales.csv)
  
**Sample Output Highlights:**
- Tracks **in playlists** generated $2,328.60 revenue from 2,240 units  
- **Top Playlist:** *Music* – 3,290 tracks, 2,129 units sold, $2,107.71 revenue  
- Confirms playlists drive higher engagement and sales.  


## 🛠 Tools & Technologies  
- **SQL (SQLite)** – complex joins, aggregation, filtering, ordering  
- **Excel / CSV** – data export and presentation-ready outputs  
- **GitHub** – version control and documentation  
- **DB Browser for SQLite** – database exploration and query execution  



## ✅ Conclusion  
These projects demonstrate my ability to transform raw data into **actionable insights** and present them in a clear, business-relevant format. The analyses illustrate the application of SQL in uncovering patterns, trends, and opportunities—skills directly transferable to **consulting** and **business analyst roles**.  

---
## 📂 Repository Structure  

```plaintext
WSDA-Music-SQL-Analysis/
│
├── queries/        # All SQL files with detailed comments
├── output/         # CSV results exported from DB Browser
├── WSDA_Music.db   # Database file
└── README.md       # Project documentation
---

