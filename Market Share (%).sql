-- Market Share (%) = (Ford's Units Sold / Total Units Sold by All Brands) × 100

SELECT 
    fi.year,
    fi.units_sold AS ford_units,
    SUM(cs.units_sold) AS total_competitor_units,
    (fi.units_sold / (fi.units_sold + SUM(cs.units_sold))) * 100 AS ford_market_share_percent
FROM ford_india_sales fi
JOIN competitor_sales_india cs ON fi.year = cs.year
GROUP BY fi.year, fi.units_sold
ORDER BY fi.year;
