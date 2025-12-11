Thank you for the opportunity to demonstrate my skills for this position.

Below is the explanation for the solution developed for this test. For comprehensive details, including query results, underlying data sources, and the full project structure, please refer to the BigQuery project I have granted access to you.

Project ID: **`data-engineer-test-480006`**

## 1. Requirements <br>
<p align="center">
   <br>
    <img width="4400" height="2475" alt="Picture1d" src="https://github.com/user-attachments/assets/c5f273c6-9eae-4f6f-bd6b-8ec6970173a7" />

</p>

#### Requirements for phone format <br>
<p>
   <br><img width="957" height="406" alt="Screenshot 2025-12-10 171243" src="https://github.com/user-attachments/assets/167cddd0-016f-4726-a6d2-fff8790a4840" />   
</p>

#### Requirements for email format <br>
<p>
   <br>
    <img width="958" height="382" alt="Screenshot 2025-12-10 171216" src="https://github.com/user-attachments/assets/45044bd8-e2d0-4e6e-82b8-72901b57d6ea" />
</p>

<br>

## 2. File reading instructions
### Dataset <br>
<p >
   <br>
    <img width="601" height="227" alt="Screenshot 2025-12-10 170644" src="https://github.com/user-attachments/assets/4cc90b49-39eb-4b3d-a089-e2c7c07ff719" />
</p> 

### Data transformation process <br>
<p >
   <br>
    <img width="4419" height="2493" alt="Picture2" src="https://github.com/user-attachments/assets/ccb845f3-93a3-46ad-8c3f-39d02b427b64" />

</p> 

### SQL Files Overview <br> 
**`/sql`** <br>
1. **`customer_raw_with_a.sql`** <br>
Returns the subset of **`customer_raw`**  where the email column contains "@". This is the first split of the original dataset.
2. **`customer_raw_without_a.sql`** <br>
Returns the subset of customer_raw where the email column does not contain "@".<br>
3. **`others.sql`** <br>
Contains rows where emails do not contain "@" and also do not match common domains (e.g., Gmail, Outlook, Hotmail).
Domain Extraction and Mapping<br>
4. **`unique_domain_with_a.sql`** <br>
Extracts unique domain names from **`customer_raw_with_a`** .<br>
Process: export → review and correct domain names in Google Sheets → import back as a mapping table → use LEFT JOIN to standardize domains.<br>
5. **`unique_domain_without_a.sql`** <br>
Same process as above, applied to domains from **`customer_raw_without_a`** .

### Cleaned Data<br>

6. **`Cleaned_with_a.sql`** <br>
Cleaned dataset for emails containing "@".<br>
7. **`Cleaned_without_a.sql`** <br>
Cleaned dataset for emails not containing "@".<br>
8. **`Cleaned_others.sql`** <br>
Cleaned dataset for records from **`others.sql`**. This portion was manually formatted due to irregular patterns.<br>
9. **`Cleaned_data_summarized.sql`** <br>
Summarized dataset combining:<br>
**`Cleaned_with_a.sql`** <br>
**`Cleaned_without_a.sql`** <br>
**`Cleaned_others.sql`** <br>
Data with rows of null values of Email<br>
### Final Review Version

10. **`Google_sheet_review.sql`** <br>
A formatted version of Cleaned_data_summarized.sql with additional adjustments, including inserting "N/A" for null values in the Phone and Email columns. <br>

 https://docs.google.com/spreadsheets/d/1dYcD_39J21fUDK9qj7PBGGx5Kjf8W8KQiOe60oUQJxE/edit?gid=1355739872#gid=1355739872
