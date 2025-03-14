-- Query: Total Revenue Comparison (1997–2021) with fixed avg price for Ford
SELECT 
    'Ford' AS brand,
    ROUND(SUM(fi.units_sold * 15000)/1000000, 2) AS total_revenue_million_usd
FROM ford_india_sales fi

UNION ALL

SELECT 
    cs.brand,
    ROUND(SUM(cs.estimated_revenue_million_usd), 2) AS total_revenue_million_usd
FROM competitor_sales_india cs
GROUP BY cs.brand

ORDER BY total_revenue_million_usd DESC;

