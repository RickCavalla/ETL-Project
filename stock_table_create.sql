CREATE TABLE stock_prices (
	symbol VARCHAR PRIMARY KEY NOT NULL,
	name VARCHAR NOT NULL,
	last_sale FLOAT NOT NULL,
	start_year_sale FLOAT NOT NULL,
	ytd_per FLOAT NOT NULL,
	sector VARCHAR NOT NULL
);

SELECT esp.sector, AVG(esp.ytd_percent) AS ytd
FROM etl_stock_price as esp
GROUP BY esp.sector
ORDER BY ytd DESC