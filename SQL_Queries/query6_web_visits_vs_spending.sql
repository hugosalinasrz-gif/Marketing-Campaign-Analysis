--Is there a relationship between the number of web visits per month and the total spending of customers?

SELECT
    CASE 
        WHEN web_visits_month BETWEEN 0 AND 2 THEN '0-2 visits'
        WHEN web_visits_month BETWEEN 3 AND 5 THEN '3-5 visits'
        WHEN web_visits_month BETWEEN 6 AND 10 THEN '6-10 visits'
        ELSE '10+ visits'
    END AS visits_group,
    ROUND(AVG(
        COALESCE(spent_wines,0) + 
        COALESCE(spent_fruits,0) + 
        COALESCE(spent_meats,0) +
        COALESCE(spent_fish,0) + 
        COALESCE(spent_sweets,0) + 
        COALESCE(spent_gold,0)
    ),2) AS avg_total_spent,
    CASE 
        WHEN web_visits_month BETWEEN 0 AND 2 THEN 1
        WHEN web_visits_month BETWEEN 3 AND 5 THEN 2
        WHEN web_visits_month BETWEEN 6 AND 10 THEN 3
        ELSE 4
    END AS order_group
FROM marketing_campaign
GROUP BY visits_group, order_group
ORDER BY order_group;
