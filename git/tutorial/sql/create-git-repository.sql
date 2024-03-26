USE ROLE ACCOUNTADMIN;

USE DATABASE tutorial_git_db;
USE SCHEMA tutorial_git_db.integrations;

CREATE OR REPLACE GIT REPOSITORY snowflake_extensions
  API_INTEGRATION = git_api_integration
  ORIGIN = 'https://github.com/sfc-gh-straut/snowflake-extensions.git';
