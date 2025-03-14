-- This will capture monthly + yearly model-wise performance from 1995 (re-entry) to 2021. 
-- For older data (1950s), we may need summarized info.
CREATE DATABASE ford_market_analysis;
USE ford_market_analysis;

-- Declining sales
CREATE TABLE ford_india_sales (
    year INT,
    model VARCHAR(50),
    units_sold INT,
    estimated_revenue_million_usd DECIMAL(10 ,2)
);
DROP TABLE ford_india_sales;

INSERT INTO ford_india_sales (year, model, units_sold, estimated_revenue_million_usd) VALUES
(1997, 'Escort', 5428, 65.14),
(1998, 'Escort', 10438, 125.26),
(1999, 'Ikon', 14681, 176.17),
(2000, 'Ikon', 15266, 183.19),
(2001, 'Ikon', 18591, 223.09),
(2002, 'Ikon', 19067, 228.80),
(2003, 'Ikon', 26176, 314.11),
(2004, 'Ikon', 30872, 370.46);

-- 2005–2009: Fiesta becomes dominant
INSERT INTO ford_india_sales (year, model, units_sold, estimated_revenue_million_usd) VALUES
(2005, 'Fiesta', 43352, 476.87),
(2006, 'Fiesta', 42364, 466.00),
(2007, 'Fiesta', 48237, 530.61),
(2008, 'Fiesta', 29488, 324.37),
(2009, 'Fiesta', 29488, 324.37);

-- 2010: Figo introduced
INSERT INTO ford_india_sales (year, model, units_sold, estimated_revenue_million_usd) VALUES
(2010, 'Figo', 60000, 480.00),
(2010, 'Fiesta', 23887, 262.76);

-- 2011
INSERT INTO ford_india_sales (year, model, units_sold, estimated_revenue_million_usd) VALUES
(2011, 'Figo', 70000, 560.00),
(2011, 'Fiesta', 15000, 165.00),
(2011, 'Endeavour', 1270, 44.45);

-- 2012
INSERT INTO ford_india_sales (year, model, units_sold, estimated_revenue_million_usd) VALUES
(2012, 'Figo', 75000, 600.00),
(2012, 'Fiesta', 15000, 165.00),
(2012, 'Endeavour', 1500, 52.50);

-- 2013 (EcoSport Launch)
INSERT INTO ford_india_sales (year, model, units_sold, estimated_revenue_million_usd) VALUES
(2013, 'Figo', 77000, 616.00),
(2013, 'EcoSport', 40000, 480.00),
(2013, 'Fiesta', 12000, 132.00),
(2013, 'Endeavour', 1500, 52.50);

-- 2014
INSERT INTO ford_india_sales (year, model, units_sold, estimated_revenue_million_usd) VALUES
(2014, 'EcoSport', 52000, 624.00),
(2014, 'Figo', 43000, 344.00),
(2014, 'Endeavour', 1500, 52.50);

-- 2015 (Aspire & Figo refreshed)
INSERT INTO ford_india_sales (year, model, units_sold, estimated_revenue_million_usd) VALUES
(2015, 'EcoSport', 45000, 540.00),
(2015, 'Figo', 30000, 240.00),
(2015, 'Aspire', 17000, 153.00),
(2015, 'Endeavour', 1800, 63.00);

-- 2016
INSERT INTO ford_india_sales (year, model, units_sold, estimated_revenue_million_usd) VALUES
(2016, 'EcoSport', 45000, 540.00),
(2016, 'Figo', 32000, 256.00),
(2016, 'Aspire', 18000, 162.00),
(2016, 'Endeavour', 2500, 87.50);

-- 2017
INSERT INTO ford_india_sales (year, model, units_sold, estimated_revenue_million_usd) VALUES
(2017, 'EcoSport', 38000, 456.00),
(2017, 'Figo', 25000, 200.00),
(2017, 'Aspire', 20000, 180.00),
(2017, 'Endeavour', 1800, 63.00);

-- 2018
INSERT INTO ford_india_sales (year, model, units_sold, estimated_revenue_million_usd) VALUES
(2018, 'EcoSport', 38000, 456.00),
(2018, 'Figo', 21000, 168.00),
(2018, 'Aspire', 19000, 171.00),
(2018, 'Freestyle', 16000, 152.00),
(2018, 'Endeavour', 1700, 59.50);

-- 2019
INSERT INTO ford_india_sales (year, model, units_sold, estimated_revenue_million_usd) VALUES
(2019, 'EcoSport', 36000, 432.00),
(2019, 'Figo', 18000, 144.00),
(2019, 'Aspire', 16000, 144.00),
(2019, 'Freestyle', 15000, 142.50),
(2019, 'Endeavour', 1500, 52.50);

-- 2020 (COVID-19 impact)
INSERT INTO ford_india_sales (year, model, units_sold, estimated_revenue_million_usd) VALUES
(2020, 'EcoSport', 34000, 408.00),
(2020, 'Figo', 10000, 80.00),
(2020, 'Aspire', 9000, 81.00),
(2020, 'Freestyle', 10000, 95.00),
(2020, 'Endeavour', 1200, 42.00);

-- 2021 (Last active year before exit)
INSERT INTO ford_india_sales (year, model, units_sold, estimated_revenue_million_usd) VALUES
(2021, 'EcoSport', 3800, 45.60),
(2021, 'Figo', 1200, 9.60),
(2021, 'Aspire', 1000, 9.00),
(2021, 'Freestyle', 900, 8.55),
(2021, 'Endeavour', 800, 28.00);

SELECT * FROM ford_india_sales;
 

