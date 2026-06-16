# SQL Contact Data Cleansing Pipeline

A modular SQL Server-based ETL pipeline designed to clean, standardize, and transform raw contact data into analytics-ready datasets.

This project demonstrates reusable T-SQL functions, staging architecture, transformation layers, and rule-based overrides for enterprise-grade data quality processing.

---

## 🚀 Key Features

- Reusable scalar functions for text cleaning and parsing
- Structured ETL pipeline (Staging → Transform → Rules → Load)
- Contact data standardization (names, phones, emails, extensions)
- Rule-based overrides for business exceptions
- Validation checks for data quality monitoring
- Fully modular and production-style SQL architecture

---

## 🏗 Project Structure


## Repository Structure
```text
vmp-contact-cleansing/
│
├── README.md
│
├── staging/
│   ├── 01_create_stage_table.sql
│   ├── 02_extract_source.sql
│
├── transforms/
│   ├── 10_clean_phone.sql
│   ├── 20_clean_fax.sql
│   ├── 30_clean_email.sql
│   ├── 40_extract_contacts.sql
│   ├── 50_extract_extensions.sql
│
├── rules/
│   ├── vendor_overrides.sql
│   ├── contact_fixes.sql
│
├── utils/
│   ├── fn_clean_text.sql
│   ├── fn_extract_phone.sql
│   ├── fn_extract_email.sql
│
├── load/
│   ├── 90_finalize_load.sql
│   ├── 99_validation_checks.sql
│
└── run_pipeline.sql
```

---

## ⚙️ Tech Stack

- SQL Server (T-SQL)
- Stored Functions
- Table-based ETL workflow
- Batch execution scripts

---

## 🔄 Pipeline Overview

### 1. Staging Layer
Raw contact data is extracted into a staging table with minimal transformation.

### 2. Transformation Layer
Data is cleaned and standardized using reusable SQL functions:
- Phone number extraction
- Email parsing
- Name cleanup
- Extension extraction

### 3. Business Rules Layer
Overrides and corrections are applied using a structured rules table to avoid hard-coded logic.

### 4. Final Load
Cleaned data is loaded into the final production table.

### 5. Validation
Basic data quality checks are executed to identify missing or incomplete records.

---

## ▶️ How to Run

Execute the pipeline using SQL Server Management Studio (SSMS):

```sql
:r run_pipeline.sql
```
## Author

**Jayani Imalka**

Data Analytics | Business Intelligence | Applied Data Science
