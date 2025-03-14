-- More Complex Query – Calculate Ford’s Export % Contribution
SELECT 
    fe.year AS `Year`,
    fe.units_exported,
    fi.units_sold,
    ROUND((fe.units_exported / (fe.units_exported + fi.units_sold)) * 100, 2) AS `Export Share (%)`
FROM ford_exports_india fe
JOIN ford_india_sales fi ON fe.year = fi.year
ORDER BY fe.year;
