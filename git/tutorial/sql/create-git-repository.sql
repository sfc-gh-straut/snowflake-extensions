USE ROLE ACCOUNTADMIN;

CREATE OR REPLACE GIT REPOSITORY snowflake_extensions
  API_INTEGRATION = git_api_integration
  ORIGIN = 'https://github.com/sfc-gh-straut/snowflake-extensions.git';
