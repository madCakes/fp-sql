-- Uses CSV files as seed data for several tables
DROP TABLE IF EXISTS cats;
CREATE TABLE cats (
    id SERIAL PRIMARY KEY,
    name VARCHAR ( 20 ),
    age INT NOT NULL,
    breed_id INT
);
COPY cats
FROM $$/code/data/cats.csv$$
DELIMITER ',' CSV HEADER;


DROP TABLE IF EXISTS breeds;
CREATE TABLE breeds (
    id SERIAL PRIMARY KEY,
    name VARCHAR ( 20 )
);
COPY breeds
FROM $$/code/data/breeds.csv$$
DELIMITER ',' CSV HEADER;


DROP TABLE IF EXISTS owners;
CREATE TABLE owners (
    id serial PRIMARY KEY,
    name VARCHAR ( 50 ) NOT NULL,
    location VARCHAR ( 20 )
);
COPY owners
FROM $$/code/data/owners.csv$$
DELIMITER ',' CSV HEADER;