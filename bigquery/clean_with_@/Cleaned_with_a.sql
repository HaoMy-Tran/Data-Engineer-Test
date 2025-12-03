WITH  split as (
SELECT
  Phone_clean,
  SPLIT(REGEXP_REPLACE(Email, r'\+.*(@)', ''), '@')[OFFSET(0)] AS user_name, -- remove invalid username
  SPLIT(REPLACE(Email,',','.'), '@')[OFFSET(1)] AS domain_name  --replace ',' by '.'
FROM
    `data_engineer_test.customer_raw_with_a`
    )
SELECT 
  Phone_clean,
  CONCAT(split.user_name, '@', dc.correct_domain_name) as Email 
FROM split
LEFT JOIN `data_engineer_test.domain_correction` dc
ON split.domain_name = dc.domain_name
