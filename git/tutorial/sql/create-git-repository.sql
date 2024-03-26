USE ROLE ACCOUNTADMIN;

USE WAREHOUSE tutorial_git_wh;
USE DATABASE tutorial_git_db;
USE SCHEMA tutorial_git_db.tutorial_git_schema;

CREATE OR REPLACE GIT REPOSITORY snowflake_extensions
  API_INTEGRATION = git_api_integration
  ORIGIN = 'https://github.com/sfc-gh-straut/snowflake-extensions.git';
