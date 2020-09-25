-- join tables

SELECT b.id, b.rank_, b.year_, a.iata_code, b.country, b.total_passengers, a.airport, a.city, a.state_, a.latitude, a.longitude
FROM busiest AS b, airports AS a
WHERE b.iata_code = a.iata_code;

