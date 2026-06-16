# data-cleaning-sql-pipeline
SQL scripts for cleaning and transforming raw contact data into analytics-ready datasets.

vmp-contact-cleansing/
│
├── README.md
├── config/
│   ├── settings.sql
│   ├── constants.sql
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
