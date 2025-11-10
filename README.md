# Marketing-Campaign-Analysis
This project analyzes customer behavior and marketing campaign effectiveness using SQL for data extraction and transformation, complemented by Excel visualizations.

## 📊 Dataset
- **Source:** Kaggle  
- **Contents:** Customer demographics, purchasing patterns, engagement metrics  

## 🛠️ Tools and Methods
- **SQL Queries:** Data extraction, cleaning, transformation, and analysis  
- **Excel:** Charts and visualizations  

## 🎯 Key Business Questions
- Which channel represents the majority of purchases: web, catalog, or
store?
- What percentage of customers can be classified as high, medium, or low
spenders based on their total purchases?
- Which marketing campaign had the highest acceptance rate among
customers, and is there a correlation between campaign
acceptance and total spending?
- Do customers with children (kids or teenagers) spend differently
than those without children, and in which product categories is the
difference most noticeable?
- How does customer recency (days since last purchase) relate to
total spending, and can we identify patterns of highly engaged
customers?
- Is there a relationship between the number of web visits per
month and the total spending of customers?

## 💡 Insights
- Channel performance: Physical stores lead with 44% of purchases, followed by Web (31%) and Catalog (20%). Recommendation: Strengthen Web marketing while maintaining in-store performance.

- Customer spending segments: High spenders ~44%, Low ~40%, Medium ~15%. Recommendation: Target medium spenders to increase engagement and upselling.

- Campaign effectiveness: Campaign 4 had the highest acceptance (7.46%), Campaign 2 the lowest (1.34%). Overall adoption rates are low (<8%). Recommendation: Learn from Campaign 4 strategies and revise Campaign 2.

- Impact of children on spending: Customers without children spend significantly more, especially on meat and wine. Recommendation: Consider family status when targeting promotions.

- Customer recency: Highest spenders are in the 91–180 day range ($613 avg), not the most recent buyers. Recommendation: Nurture moderately recent buyers; they are high-value occasional spenders.

- Web visits vs spending: Low-frequency visitors (0–2 visits/month) spend the most ($1,205 avg), while very frequent visitors (10+ visits) spend the least ($88 avg). Recommendation: Convert high-visit users into buyers and focus on low-frequency, high-value customers.

> These insights can help improve marketing strategies, prioritize high-value customers, and optimize engagement efforts.

```
## 📂 Project Structure
Marketing-Campaign-Analysis/
├── Marketing_Campaign_Report.pdf       # Project documentation
├── SQL_Queries/                        # Folder with SQL scripts
│   ├── query1_channel_performance.sql         # Which channel represents the majority of purchases
│   ├── query2_spending_segments.sql          # Percentage of high, medium, low spenders
│   ├── query3_campaign_effectiveness.sql     # Campaign acceptance rates
│   ├── query4_children_spending.sql          # Impact of children on spending
│   ├── query5_customer_recency.sql           # Customer recency vs total spending
│   └── query6_web_visits_vs_spending.sql     # Web visits vs total spending
├── data/                                     # Original dataset
│   └── marketing_data.csv
└── visuals/                                  # Exported charts from Excel
    ├── chart1_channel_performance.png
    ├── chart2_spending_segments.png
    ├── chart3_campaign_effectiveness.png
    ├── chart4_children_spending.png
    ├── chart5_customer_recency.png
    └── chart6_web_visits_vs_spending.png
```
