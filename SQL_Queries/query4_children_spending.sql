--Do customers with children (kids or teenagers) spend differently than those without children, and in which product categories is the difference most noticeable?

SELECT
    CASE WHEN kidhome + teenhome > 0 THEN 'With Children' ELSE 'Without Children' END AS customer_type,
    ROUND(AVG(COALESCE(spent_wines,0)),2) AS avg_spent_wines,
    ROUND(AVG(COALESCE(spent_fruits,0)),2) AS avg_spent_fruits,
    ROUND(AVG(COALESCE(spent_meats,0)),2) AS avg_spent_meats,
    ROUND(AVG(COALESCE(spent_fish,0)),2) AS avg_spent_fish,
    ROUND(AVG(COALESCE(spent_sweets,0)),2) AS avg_spent_sweets,
    ROUND(AVG(COALESCE(spent_gold,0)),2) AS avg_spent_gold,
    ROUND(AVG(
        COALESCE(spent_wines,0) + 
        COALESCE(spent_fruits,0) + 
        COALESCE(spent_meats,0) +
        COALESCE(spent_fish,0) + 
        COALESCE(spent_sweets,0) + 
        COALESCE(spent_gold,0)
    ),2) AS avg_total_spent
FROM marketing_campaign
GROUP BY customer_type;

