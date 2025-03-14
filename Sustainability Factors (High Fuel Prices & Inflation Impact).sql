-- Sustainability Factors (High Fuel Prices & Inflation Impact)
SELECT 
    fi.year AS `Year`,
    fi.units_sold,
    mf.fuel_price_per_litre_usd,
    mf.inflation_percent,
    CASE 
        WHEN mf.fuel_price_per_litre_usd > 1.2 OR mf.inflation_percent > 7 THEN 'Likely Drop'
        ELSE 'Stable'
    END AS `Market Condition Impact`
FROM ford_india_sales fi
JOIN market_factors mf ON fi.year = mf.year;

