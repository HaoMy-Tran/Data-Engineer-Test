ELECT
CASE WHEN 
    Cleaned_phone IS NULL THEN 'N/A' ELSE Cleaned_phone END AS Cleaned_phone,
CASE WHEN
    Cleaned_email IS NULL THEN 'N/A' ELSE Cleaned_email END AS Cleaned_email
FROM `data_engineer_test.Cleaned_data`
