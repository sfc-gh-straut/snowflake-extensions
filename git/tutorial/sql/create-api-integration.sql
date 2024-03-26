USE ROLE ACCOUNTADMIN;
-- CREATE ROLE tutorial_git_admin;
-- GRANT CREATE INTEGRATION ON ACCOUNT TO ROLE tutorial_git_admin;

-- USE ROLE tutorial_git_db_owner;
-- GRANT USAGE ON DATABASE tutorial_git_db TO ROLE tutorial_git_admin;
-- GRANT USAGE ON SCHEMA tutorial_git_db.integrations TO ROLE tutorial_git_admin;

-- USE ROLE tutorial_secrets_admin;
-- GRANT USAGE ON SECRET tutorial_git_secret TO ROLE myco_git_admin;

-- USE ROLE tutorial_git_admin;
-- USE DATABASE tutorial_git_db;
-- USE SCHEMA tutorial_git_db.integrations;

CREATE OR REPLACE API INTEGRATION tutorial_git_api_integration
  API_PROVIDER = git_https_api
  API_ALLOWED_PREFIXES = ('https://github.com/sfc-gh-straut')
  ENABLED = TRUE;

