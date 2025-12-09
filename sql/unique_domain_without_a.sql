WITH cte AS (
  SELECT
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
SELECT DISTINCT Domain_name FROM cte WHERE Domain_name IS NOT NULL ORDER BY Domain_name
