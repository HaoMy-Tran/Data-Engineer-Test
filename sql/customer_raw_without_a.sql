-- Remove duplicates
WITH
  dedup AS (
    SELECT DISTINCT phone, email
    FROM `data-engineer-test-480006`.`data_engineer_test`.`customer_raw`
  ),
-- Clean phone (E.164 format) and Lower case, remove space and replace ' at ' with @
  phone_cleaning AS (
    SELECT
      REPLACE( -- Lower case, remove space and replace ' at ' with @
        REPLACE(
            LOWER(Email),
            ' at ',
            '@'
        ),
        ' ',
        '') AS Email, 
      CONCAT(
        '+84',
        REGEXP_REPLACE( -- Phone formatting
          REGEXP_REPLACE(phone, r'[^0-9]', ''),  -- keep digits only
          r'^0',
          ''  -- remove leading 0
        ))
        AS Phone_clean
    FROM dedup
  )

SELECT Phone_clean, Email FROM `phone_cleaning`
WHERE Email NOT LIKE '%@%' OR Email IS NULL;
