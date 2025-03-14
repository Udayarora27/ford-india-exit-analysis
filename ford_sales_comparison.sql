-- fi = ford_india_sales
-- fe = ford_exports_india
-- cs = competitor_sales_india
-- mf = market_factors

SELECT 
    fi.year AS `Year`,

    -- Ford Performance
    fi.units_sold AS `Ford Units Sold (India)`,
    fe.units_exported AS `Ford Exported Units`,

    -- Maruti Suzuki
    SUM(CASE WHEN cs.brand = 'Maruti Suzuki' THEN cs.units_sold END) AS `Maruti Units Sold`,
    SUM(CASE WHEN cs.brand = 'Maruti Suzuki' THEN cs.estimated_revenue_million_usd END) AS `Maruti Revenue (USD Million)`,

    -- Hyundai
    SUM(CASE WHEN cs.brand = 'Hyundai' THEN cs.units_sold END) AS `Hyundai Units Sold`,
    SUM(CASE WHEN cs.brand = 'Hyundai' THEN cs.estimated_revenue_million_usd END) AS `Hyundai Revenue (USD Million)`,

    -- Tata
    SUM(CASE WHEN cs.brand = 'Tata' THEN cs.units_sold END) AS `Tata Units Sold`,
    SUM(CASE WHEN cs.brand = 'Tata' THEN cs.estimated_revenue_million_usd END) AS `Tata Revenue (USD Million)`,

    -- Mahindra
    SUM(CASE WHEN cs.brand = 'Mahindra' THEN cs.units_sold END) AS `Mahindra Units Sold`,
    SUM(CASE WHEN cs.brand = 'Mahindra' THEN cs.estimated_revenue_million_usd END) AS `Mahindra Revenue (USD Million)`,

    -- Honda
    SUM(CASE WHEN cs.brand = 'Honda' THEN cs.units_sold END) AS `Honda Units Sold`,
    SUM(CASE WHEN cs.brand = 'Honda' THEN cs.estimated_revenue_million_usd END) AS `Honda Revenue (USD Million)`,

    -- Market Factors
    mf.fuel_price_per_litre_usd AS `Fuel Price (USD/L)`,
    mf.inflation_percent AS `Inflation (%)`,
    mf.labor_cost_index AS `Labor Cost Index`,
    mf.gst_tax_rate_percent AS `GST Tax Rate (%)`

FROM ford_india_sales fi
LEFT JOIN ford_exports_india fe ON fi.year = fe.year
LEFT JOIN competitor_sales_india cs ON fi.year = cs.year
LEFT JOIN market_factors mf ON fi.year = mf.year

GROUP BY 
    fi.year,
    fi.units_sold,
    fe.units_exported,
    mf.fuel_price_per_litre_usd,
    mf.inflation_percent,
    mf.labor_cost_index,
    mf.gst_tax_rate_percent

ORDER BY fi.year;
SELECT DISTINCT year FROM ford_india_sales ORDER BY year;
SELECT DISTINCT year FROM competitor_sales_india ORDER BY year;
SELECT DISTINCT year FROM ford_exports_india ORDER BY year;
SELECT DISTINCT year FROM market_factors ORDER BY year;

-- This will show which brands have full data and which don't. 
-- If "Honda" or "Tata" shows fewer than 25 years → that’s why NULL appears.
SELECT brand, COUNT(DISTINCT year) AS years_available
FROM competitor_sales_india
GROUP BY brand
ORDER BY years_available DESC;

-- Some rows may have units_sold, but avg_price_per_unit_usd 
-- or estimated_revenue_million_usd is missing.
SELECT brand, year, units_sold, avg_price_per_unit_usd, estimated_revenue_million_usd
FROM competitor_sales_india
WHERE avg_price_per_unit_usd IS NULL OR estimated_revenue_million_usd IS NULL
ORDER BY brand, year;

SELECT COUNT(*) AS total_rows FROM competitor_sales_india;
SELECT * FROM competitor_sales_india
ORDER BY brand, year;

--  Query 1: Ford vs Each Brand (Yearly Sales & Revenue Comparison)
--- What This Query Shows:
-- 1. Ford's units sold for each year (1997–2021)
-- 2. Each competitor brand's units sold and estimated revenue for the same year
-- 3. The difference in units sold between each competitor and Ford for that year

SELECT 
    fi.year AS `Year`,
    fi.units_sold AS `Ford Units Sold`,
    cs.brand AS `Competitor Brand`,
    cs.units_sold AS `Competitor Units Sold`,
    cs.estimated_revenue_million_usd AS `Competitor Revenue (Million USD)`,
    (cs.units_sold - fi.units_sold) AS `Units Difference`
FROM ford_india_sales fi
JOIN competitor_sales_india cs ON fi.year = cs.year
ORDER BY fi.year, cs.brand;


SELECT 
    fi.year AS `Year`,
    fi.units_sold AS `Ford Units Sold`,
    cs.brand AS `Competitor Brand`,
    cs.units_sold AS `Competitor Units Sold`,
    cs.estimated_revenue_million_usd AS `Competitor Revenue (Million USD)`,
    (cs.units_sold - fi.units_sold) AS `Units Difference`
FROM ford_india_sales fi
JOIN competitor_sales_india cs ON fi.year = cs.year
ORDER BY fi.year, cs.brand;





