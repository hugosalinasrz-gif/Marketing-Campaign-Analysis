--How does customer recency (days since last purchase) relate to total spending, and can we identify patterns of highly engaged customers?

SELECT
    CASE 
        WHEN recency <= 30 THEN '0-30 days'
        WHEN recency BETWEEN 31 AND 90 THEN '31-90 days'
        WHEN recency BETWEEN 91 AND 180 THEN '91-180 days'
        ELSE '180+ days'
    END AS recency_group,
    ROUND(AVG(COALESCE(spent_wines,0) + COALESCE(spent_fruits,0) + COALESCE(spent_meats,0)
        + COALESCE(spent_fish,0) + COALESCE(spent_sweets,0) + COALESCE(spent_gold,0)),2) AS avg_total_spent
FROM marketing_campaign
GROUP BY recency_group
ORDER BY recency_group;
