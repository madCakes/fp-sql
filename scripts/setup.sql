-- Defines the cats table
DROP TABLE IF EXISTS cats;
CREATE TABLE cats (
	id SERIAL PRIMARY KEY,
	name VARCHAR ( 20 ),
	age INT NOT NULL
);
-- VARCHAR = ASCII character
