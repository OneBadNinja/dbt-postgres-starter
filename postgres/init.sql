-- This SQL script initializes a PostgreSQL database for testing purposes.
-- It creates a database named 'test_db' and a table named 'test_table' with some sample data.
-- Create user
CREATE TABLE IF NOT EXISTS public.test_table (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);