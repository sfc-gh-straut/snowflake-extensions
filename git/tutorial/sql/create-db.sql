USE ROLE ACCOUNTADMIN;

CREATE OR REPLACE DATABASE tutorial_git_db;

CREATE OR REPLACE WAREHOUSE tutorial_git_wh
  WAREHOUSE_TYPE = STANDARD
  WAREHOUSE_SIZE = XSMALL;
  
USE DATABASE tutorial_git_db;
CREATE OR REPLACE SCHEMA tutorial_git_schema;
USE SCHEMA tutorial_git_db.tutorial_git_schema;

CREATE OR REPLACE TABLE employees(id NUMBER, name VARCHAR, role VARCHAR);
INSERT INTO employees (id, name, role) VALUES (1, 'Alice', 'op'), (2, 'Peter', 'dev'), (3, 'Cindy', 'dev');

SELECT * FROM employees;
