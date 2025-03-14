-- Ford India Sales vs Competitor Sales (Yearly Comparison)
SELECT 
    fi.year,
    fi.units_sold AS ford_units,
    cs.brand,
    cs.units_sold AS competitor_units,
    cs.estimated_revenue_million_usd
FROM 
    ford_india_sales fi
JOIN 
    competitor_sales_india cs 
ON 
    fi.year = cs.year
WHERE 
    cs.brand IN ('Maruti', 'Hyundai', 'Tata')  -- Focus on top rivals
ORDER BY 
    fi.year, cs.brand;
