-- Creating tables for final database
CREATE TABLE house_price (
	Date DATE NOT NULL,
Composite_HPI_SA float NOT NULL,
Composite_Benchmark_SA INT NOT NULL,
	PRIMARY KEY (Date)
);


CREATE TABLE mortgage_rates (
Date DATE NOT NULL,
Rate float NOT NULL,
	PRIMARY KEY (Date)
);

CREATE TABLE Immigrants (
Date DATE NOT NULL,
Immigrants FLOAT NOT NULL,
	PRIMARY KEY (Date)
);

-- Creating final database from three tables
SELECT house_price.Date,house_price.Composite_HPI_SA,house_price.Composite_Benchmark_SA,
mortgage_rates.Rate,immigrants.immigrants
INTO Final_Database
FROM house_price
RIGHT JOIN mortgage_rates 
	ON (house_price.Date=mortgage_rates.Date)
LEFT JOIN immigrants
	ON (house_price.Date=immigrants.date);