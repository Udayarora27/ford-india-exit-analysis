-- Underused export capacity
DROP TABLE IF EXISTS ford_exports_india;

CREATE TABLE ford_exports_india (
    year INT,
    model VARCHAR(50),
    units_exported INT, 
    destination_country VARCHAR(50),
    estimated_revenue_million_usd DECIMAL(10, 2)
);
DROP TABLE ford_exports_india;


 INSERT INTO ford_exports_india (year, model, units_exported, estimated_revenue_million_usd) VALUES
(1997, 'Escort', 0, 0.00),
(1998, 'Escort', 0, 0.00),
(1999, 'Escort', 0, 0.00),
(2000, 'Escort', 200, 2.00);

INSERT INTO ford_exports_india (year, model, units_exported, estimated_revenue_million_usd) VALUES
(2001, 'Ikon', 2000, 20),
(2002, 'Ikon', 3000, 30),
(2003, 'Ikon', 4000, 40),
(2004, 'Ikon', 5000, 50),
(2005, 'Ikon', 7000, 70),
(2006, 'Ikon', 9000, 90),
(2007, 'Fiesta', 11000, 110),
(2008, 'Fiesta', 13000, 130),
(2009, 'Fiesta', 15000, 150);

INSERT INTO ford_exports_india (year, model, units_exported, estimated_revenue_million_usd) VALUES
(2010, 'Figo', 12000, 120),
(2011, 'Figo', 24000, 240),
(2012, 'Figo', 33000, 330),
(2013, 'Figo', 40000, 400),
(2014, 'Figo', 46000, 460),
(2015, 'Figo', 52000, 520),
(2016, 'Figo', 59000, 590),
(2017, 'Figo', 66000, 660),
(2018, 'Figo', 73000, 730),
(2019, 'Figo', 88000, 880),
(2020, 'Figo', 70000, 700),
(2021, 'Figo', 30000, 300);
-- Check data in the incorrect table name (if needed)
SELECT * FROM ford_exports_india;

-- If it's a duplicate or empty, you can drop it
DROP TABLE frod_exports_india;


