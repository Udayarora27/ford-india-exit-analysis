-- Business environment issues
CREATE TABLE market_factors (
    year INT,
    fuel_price_per_litre_usd DECIMAL(5,2),
    gst_tax_rate_percent DECIMAL(5,2),
    ease_of_doing_business_rank INT,
    inflation_percent DECIMAL(4,2),
    labor_cost_index DECIMAL(5,2)
);
ALTER TABLE market_factors ADD COLUMN country VARCHAR(50);

DROP TABLE market_factors;
-- Note: GST (Goods and Services Tax) was implemented in India on July 1, 2017.
-- Therefore, gst_tax_rate_percent is marked as NULL for years prior to 2017.
-- Prior to GST, India followed a multi-tax system with excise, VAT, CST, and others.
-- From 2017 onward, passenger cars fall under the 28% GST slab (with additional cess).
INSERT INTO market_factors (year, country, fuel_price_per_litre_usd, gst_tax_rate_percent, ease_of_doing_business_rank, inflation_percent, labor_cost_index) VALUES
(1997, 'India', 1.02, NULL, 121, 5.95, 40.00),
(1998, 'India', 1.05, NULL, 136, 6.45, 40.90),
(1999, 'India', 0.54, NULL, 137, 3.05, 41.80),
(2000, 'India', 1.23, NULL, 126, 7.32, 42.70),
(2001, 'India', 1.14, NULL, 133, 4.05, 43.60),
(2002, 'India', 1.16, NULL, 132, 3.22, 44.50),
(2003, 'India', 1.12, NULL, 130, 3.81, 45.40),
(2004, 'India', 1.21, NULL, 124, 3.77, 46.30),
(2005, 'India', 1.26, NULL, 118, 4.25, 47.20),
(2006, 'India', 1.29, NULL, 113, 5.79, 48.10),
(2007, 'India', 1.31, NULL, 111, 6.37, 49.00),
(2008, 'India', 1.38, NULL, 122, 8.35, 49.90),
(2009, 'India', 1.23, NULL, 133, 10.88, 50.80),
(2010, 'India', 1.19, NULL, 135, 11.99, 51.70),
(2011, 'India', 1.32, NULL, 132, 8.86, 52.60),
(2012, 'India', 1.45, NULL, 132, 9.30, 53.50),
(2013, 'India', 1.36, NULL, 134, 10.90, 54.40),
(2014, 'India', 1.17, NULL, 142, 5.80, 55.30),
(2015, 'India', 0.92, NULL, 130, 4.90, 56.20),
(2016, 'India', 0.93, NULL, 130, 4.94, 57.10),
(2017, 'India', 0.97, 28.00, 100, 3.33, 58.00),
(2018, 'India', 1.09, 28.00, 77, 3.94, 58.90),
(2019, 'India', 1.06, 28.00, 63, 3.73, 59.80),
(2020, 'India', 0.85, 28.00, 63, 6.62, 60.60),
(2021, 'India', 0.84, 28.00, 63, 6.12, 61.30);
SELECT * FROM market_factors;
