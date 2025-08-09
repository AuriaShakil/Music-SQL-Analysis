🎵 WSDA Music SQL Analysis – Projects 1 to 5
📊 Project Overview
This repository contains five SQL analysis projects using the WSDA Music database.
Each project answers a specific business question relevant to the music industry and produces actionable insights for marketing, pricing, and playlist strategies.

All SQL queries are saved in the queries/ folder as .sql files with detailed comments explaining their purpose, methodology, and tables used.
Outputs are exported from DB Browser for SQLite as .csv files in the outputs/ folder.

📝 Projects
Project 1 – Top Revenue-Generating Artists and Albums
Goal: Identify which artists and albums generate the most revenue.
Insight: Pinpoints high-performing artists/albums for targeted promotion.

Queries:

Project1_top_artists_and_albums_by_revenue.sql

Project1_top_albums_by_revenue.sql

Outputs:

outputs/project1_top_artists_and_albums_by_revenue.csv

outputs/project1_top_albums_by_revenue.csv

Project 2 – Genre Profitability and Growth Trends Over Time
Goal: Measure yearly revenue by genre and track top genres per year.
Insight: Identifies emerging genres for strategic marketing investment.

Queries:

Project2_yearly_revenue_by_genre.sql

Project2_top_genre_each_year.sql

Outputs:

outputs/project2_yearly_revenue_by_genre.csv

outputs/project2_top_genre_each_year.csv

Project 3 – Customer Segmentation by Spending Behavior
Goal: Segment customers into top spenders and low spenders.
Insight: Helps design loyalty programs for high-value customers.

Queries:

Project3_top_spending_customers.sql

Project3_low_spending_customers.sql

Outputs:

outputs/project3_top_spending_customers.csv

outputs/project3_low_spending_customers.csv

Project 4 – Track Popularity vs. Price Elasticity
Goal: Analyze correlation between track price and total sales.
Insight: Guides data-driven pricing strategies.

Query:

Project4_track_price_vs_sales.sql

Output:

outputs/project4_track_price_vs_sales.csv

Project 5 – Playlist Influence on Sales
Goal: Compare sales for tracks in playlists vs. not in playlists, and rank top-performing playlists.
Insight: Validates playlist curation as a sales driver.

Queries:

Project5_playlist_influence_overall.sql

Project5_top_playlists_by_sales.sql

Outputs:

outputs/project5_playlist_influence_overall.csv

outputs/project5_top_playlists_by_sales.csv

🛠 Tools & Technologies
SQL (SQLite via DB Browser for SQLite)

Excel / CSV for exports

GitHub for version control and documentation

📂 Repository Structure
bash
Copy
Edit
WSDA-Music-SQL-Analysis/
│
├── queries/         # All SQL files with detailed comments
├── outputs/         # CSV results exported from DB Browser
├── WSDA_Music.db    # Database file
└── README.md        # Project documentation
✅ Conclusion
This series of projects demonstrates how SQL can be applied to real-world music industry data to uncover trends in revenue, customer behavior, and product performance.
The insights generated here could inform marketing, pricing, and playlist strategies for a digital music business.
