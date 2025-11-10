--What percentage of customers can be classified as high, medium, or low spenders based on their total purchases?

SELECT
    CASE 
        WHEN total_spent < 200 THEN 'Low'
        WHEN total_spent BETWEEN 200 AND 500 THEN 'Medium'
        ELSE 'High'
    END AS spending_segment,
    COUNT(*) AS num_customers
FROM (
    SELECT 
        id,
        (spent_wines + spent_fruits + spent_meats + spent_fish + spent_sweets + spent_gold) AS total_spent
    FROM marketing_campaign
) AS sub
GROUP BY spending_segment
ORDER BY num_customers DESC;
