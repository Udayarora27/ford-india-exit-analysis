-- Global contrast (e.g. success in Thailand or SA)
CREATE TABLE ford_global_sales (
    year INT,
    country VARCHAR(50),
    model VARCHAR(50),
    units_sold INT,
    estimated_revenue_million_usd DECIMAL(10, 2)  
);

DROP TABLE ford_global_sales;

SELECT * FROM ford_global_sales;
