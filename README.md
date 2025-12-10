## 1. Requirements <br>
<p align="center">
   <br>
    <img width="4400" height="2475" alt="Picture1" src="https://github.com/user-attachments/assets/fdecde79-b893-4394-8793-540173afc8c2" />
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

### SQL file <br>
**`/sql`** <br>
'customer_raw_with_a.sql': I splitted the original data (customer_raw) into two parts: emails column is with and without @. This is the sql the return the first part <br>
'customer_raw_without_a.sql': and this retutned the second part <br>
'Cleaned_with_a.sql': The data with emails carrying @ after being cleaned<br>
'Cleaned_without_a.sql': The data with emails not carrying @ after being cleaned<br>
'others.sql': 
