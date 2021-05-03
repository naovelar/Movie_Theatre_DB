-- customer table layout --

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	billing_info VARCHAR(150)
);

-- tickets table layout --

CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
  amount NUMERIC(4,2),
	sub_total NUMERIC(8,2),
  total_cost NUMERIC(10,2),
  movie_name VARCHAR(150)
  customer_id INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
  
-- concessions table layout --

CREATE TABLE concessions(
	product_id SERIAL PRIMARY KEY,
	amount NUMERIC (5,2),
	product_name VARCHAR(100),
	sale_id INTEGER,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

-- movies table layout --

CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(150),
	ticket_id INTEGER
);
