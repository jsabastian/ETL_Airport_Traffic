-- table drops
DROP TABLE airports;
DROP TABLE busiest;

-- Create a new tables for all three csv files
CREATE TABLE airports (
   	iata_code VARCHAR PRIMARY KEY NOT NULL,
    airport VARCHAR NOT NULL,
    city VARCHAR NOT NULL,
    state_ VARCHAR NOT NULL,
    country VARCHAR NOT NULL,
	latitude FLOAT NOT NULL,
	longitude FLOAT NOT NULL
);

CREATE TABLE busiest (
	id INTEGER NOT NULL,
	rank_ INTEGER NOT NULL,
	year_ VARCHAR NOT NULL,
	iata_code VARCHAR PRIMARY KEY NOT NULL,
	country VARCHAR NOT NULL,
	total_passengers INTEGER NOT NULL
);
   

select * from airports;

select * from busiest;




