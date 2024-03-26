USE ROLE ACCOUNTADMIN;

USE DATABASE tutorial_git_db;
USE SCHEMA tutorial_git_db.tutorial_git_schema;

CREATE OR REPLACE PROCEDURE tutorial_filter_by_role(tableName VARCHAR, role VARCHAR)
  RETURNS TABLE(id NUMBER, name VARCHAR, role VARCHAR)
  LANGUAGE PYTHON
  RUNTIME_VERSION = '3.8'
  PACKAGES = ('snowflake-snowpark-python')
  IMPORTS = ('@tutorial_git_db.tutorial_git_schema.snowflake_extensions/branches/main/git/tutorial/python/filter.py')
  HANDLER = 'filter.filter_by_role';
