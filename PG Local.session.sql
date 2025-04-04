CREATE TABLE IF NOT EXISTS users(
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);


INSERT INTO users(username, email) VALUES
    ('john_doe','johndoe@example.com'),
    ('john_sena','johnsena@example.com'),
    ('papa_jhons','papajhons@example.com');

CREATE DATABASE fintrack;

\c fintrack


CREATE USER fintrack_user WITH PASSWORD 'fintrack';
ALTER ROLE fintrack_user SET client_encoding TO 'utf-8';
ALTER ROLE fintrack_user SET default_transaction_isolation TO 'read committed';
ALTER ROLE fintrack_user SET timezone TO 'UTC';
GRANT ALL PRIVILEGES ON DATABASE fintrack TO fintrack_user;