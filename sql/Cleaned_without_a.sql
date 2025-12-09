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
SELECT 
  Phone_clean,
  CONCAT(cte.User_name, '@', dcwa.Correct_domain_name) as Email 
FROM cte
LEFT JOIN `data_engineer_test.domain_correction_without_a` dcwa
ON cte.Domain_name = dcwa.domain_name WHERE cte.User_name IS NOT NULL
