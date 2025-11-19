--Which channel represents the majority of purchases: web, catalog, or store?

SELECT 
    'Web' AS channel, 
    SUM(web_purchases) AS total_purchases
FROM marketing_campaign
UNION ALL
SELECT 
    'Catalog',
    SUM(catalog_purchases)
FROM marketing_campaign
UNION ALL
SELECT 
    'Store',
    SUM(store_purchases)
FROM marketing_campaign
ORDER BY total_purchases DESC;

