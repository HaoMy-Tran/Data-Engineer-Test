WITH  split as (
SELECT
  SPLIT(REGEXP_REPLACE(Email, r'\+.*(?=@)', ''), '@')[OFFSET(0)] AS user_name, -- remove invalid username
  SPLIT(REPLACE(Email,',','.'), '@')[OFFSET(1)] AS domain_name  --replace ',' by '.'
FROM
    `data_engineer_test.customer_raw_with_a`)

SELECT DISTINCT domain_name FROM split ORDER BY domain_name
