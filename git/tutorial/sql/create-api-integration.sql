USE ROLE ACCOUNTADMIN;

USE DATABASE tutorial_git_db;
USE SCHEMA tutorial_git_db.tutorial_git_schema;

CREATE OR REPLACE API INTEGRATION tutorial_git_api_integration
  API_PROVIDER = git_https_api
  API_ALLOWED_PREFIXES = ('https://github.com/sfc-gh-straut')
  ENABLED = TRUE;

