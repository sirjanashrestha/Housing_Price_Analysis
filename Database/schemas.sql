-- Creating tables for final database
CREATE TABLE house_price (
Composite_HPI_SA float NOT NULL,
Composite_Benchmark_SA INT NOT NULL,
date varchar NOT NULL,
	PRIMARY KEY (date)
);

CREATE TABLE mortgage_rates (
Mortgage_Rate float NOT NULL,
date varchar NOT NULL,
	PRIMARY KEY (date)
);

CREATE TABLE Immigrants (
immigrants FLOAT NOT NULL,
date varchar NOT NULL,
	PRIMARY KEY (date)
);
select house_price.date, house_price.Composite_HPI_SA, house_price.Composite_Benchmark_SA,
mortgage_rates.Mortgage_Rate, immigrants.immigrants
INTO final_db
FROM house_price
RIGHT JOIN mortgage_rates
	ON(house_price.date=mortgage_rates.date)
RIGHT JOIN immigrants
	ON(house_price.date=immigrants.date);
	
select * FROM final_db
