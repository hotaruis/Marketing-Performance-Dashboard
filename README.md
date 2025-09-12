# Marketing Performance Dashboard (SQL + Looker Studio)
This project consolidates **Facebook Ads** and **Google Ads** data into a single dataset using SQL and visualizes marketing performance in **Google Looker Studio**.

## Features
- SQL query to join and unify data from Facebook Ads and Google Ads.  
- Combined dataset includes key campaign and ad set metrics: **spend, impressions, reach, clicks, leads, value**.  
- Interactive Looker Studio dashboard with filters and calculated fields (CPC, CPM, CTR, ROMI).  

## SQL Query
The SQL script creates a CTE for Facebook Ads, then unifies it with Google Ads using `UNION ALL` to produce a combined dataset.

## Looker Studio Dashboard
 [View Dashboard](https://lookerstudio.google.com/reporting/c9fa8368-a118-4c18-aca0-a566c587da66)
 
The dashboard includes:
- Combined chart: Ad Spend vs ROMI trend.
- Line chart: Active campaigns over time.
- Heatmap table: Campaign metrics (CPC, CPM, CTR, ROMI).
- Filters for campaign name and date.

## Screenshots
```markdown
   ![Dashboard Screenshot](dashboard.png)

 ## Tools & Technologies
- SQL (PostgreSQL)
- Google Looker Studio
