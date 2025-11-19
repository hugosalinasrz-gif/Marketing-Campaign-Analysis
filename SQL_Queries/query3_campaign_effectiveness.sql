--Which marketing campaign had the highest acceptance rate among customers, and is there a correlation between campaign acceptance and total spending?

--Query 1: Acceptance rate by campaign

SELECT 
    'Campaign 1' AS campaign,
    ROUND(100.0 * SUM(CASE WHEN cmp1_accepted = TRUE THEN 1 ELSE 0 END) / COUNT(*), 2) AS acceptance_rate
FROM marketing_campaign
UNION ALL
SELECT 
    'Campaign 2',
    ROUND(100.0 * SUM(CASE WHEN cmp2_accepted = TRUE THEN 1 ELSE 0 END) / COUNT(*), 2)
FROM marketing_campaign
UNION ALL
SELECT 
    'Campaign 3',
    ROUND(100.0 * SUM(CASE WHEN cmp3_accepted = TRUE THEN 1 ELSE 0 END) / COUNT(*), 2)
FROM marketing_campaign
UNION ALL
SELECT 
    'Campaign 4',
    ROUND(100.0 * SUM(CASE WHEN cmp4_accepted = TRUE THEN 1 ELSE 0 END) / COUNT(*), 2)
FROM marketing_campaign
UNION ALL
SELECT 
    'Campaign 5',
    ROUND(100.0 * SUM(CASE WHEN cmp5_accepted = TRUE THEN 1 ELSE 0 END) / COUNT(*), 2)
FROM marketing_campaign;

--Query 2: Average spending total by client


SELECT 
    ROUND(AVG(
        COALESCE(spent_wines,0) + 
        COALESCE(spent_fruits,0) + 
        COALESCE(spent_meats,0) + 
        COALESCE(spent_fish,0) + 
        COALESCE(spent_sweets,0) + 
        COALESCE(spent_gold,0)
    ), 2) AS avg_total_spent
FROM marketing_campaign;
