WITH cte AS (
  SELECT
    Phone_clean,
    Email,
  -- User name
    REGEXP_EXTRACT(
        Email,
        r'^(.+?)(?:gmail|yahoo|hotmail|outlook|icloud).*$'
    ) AS User_name,
  -- Domain name
    REGEXP_EXTRACT(
        Email,
        r'^(?:.*?)(gmail.*|yahoo.*|hotmail.*|outlook.*|icloud.*)$'
    ) AS Domain_name
FROM
    `data-engineer-test-480006.data_engineer_test.customer_raw_without_a`
)
SELECT Phone_clean, Email FROM cte WHERE User_name IS NULL AND Email IS NOT NULL
