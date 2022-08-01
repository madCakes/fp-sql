CREATE TABLE adoptions (
	id SERIAL PRIMARY KEY,
    cat_id INT REFERENCES cats (id) NOT NULL,
    owner_id INT REFERENCES owners (id) NOT NULL,
    adoption_date TIMESTAMP DEFAULT NOW()
);

INSERT INTO adoptions (cat_id, owner_id) VALUES (1, 1), (3, 2);

-- Get the name of owners and the cats they've adopted
SELECT owners.name AS owner, cats.name AS cat
FROM ((adoptions JOIN owners ON adoptions.owner_id = owners.id)
JOIN cats ON adoptions.cat_id = cats.id);
