USE WAREHOUSE myco_warehouse;
USE DATABASE myco_db;
USE ROLE myco_db_owner;

-- create db and schemas
CREATE SCHEMA IF NOT EXISTS udfs;
CREATE SCHEMA IF NOT EXISTS tables;

-- create table
USE SCHEMA myco_db.tables;
CREATE TABLE IF NOT EXISTS stocksale (
  symbol VARCHAR,
  quantity INTEGER,
  price NUMBER
);

INSERT INTO stocksale (symbol, quantity, price) VALUES
  ('SNOW', 6, 128),
  ('SNOW', 8, 129),
  ('GM', 34, 39),
  ('AAPL', 23, 140),
  ('CSCO', 18, 44)
;

