-- Strong competition
/* 
DISCLAIMER:
This SQL project contains a mix of actual and estimated data from 1997 to 2021.
Due to data limitations, some values such as:
- Sales units,
- Export revenue,
- Competitor prices,
- Market factors (e.g., inflation, fuel prices)

...are estimated using publicly available sources or assumed averages.

The data may not reflect actual figures and is used solely for educational/analytical purposes.

✅ A formal request will be sent to Ford India to verify or correct the information.
📌 This will be clearly mentioned on LinkedIn when publishing this project.
📧 If feedback is received, all data will be revised accordingly.

Terms & Conditions Apply.
*/

CREATE TABLE competitor_sales_india (
    year INT,
    brand VARCHAR(50),
    model VARCHAR(50),
    units_sold INT,
    market_share INT
);
ALTER TABLE competitor_sales_india CHANGE market_share estimated_revenue_million_usd DECIMAL(10,2)
;
ALTER TABLE competitor_sales_india ADD column Cavg_price_per_unit_usd DECIMAL(10,2); -- wrong line


ALTER TABLE competitor_sales_india 
ADD COLUMN avg_price_per_unit_usd DECIMAL(10,2);
DROP table competitor_sales_india;

select * FROM competitor_sales_india;