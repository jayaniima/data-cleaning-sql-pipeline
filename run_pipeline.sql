USE Mapping;

:r staging/01_create_stage_table.sql
:r transforms/10_clean_phone.sql
:r transforms/20_clean_fax.sql
:r transforms/30_clean_email.sql
:r transforms/40_extract_contacts.sql
:r transforms/50_extract_extensions.sql
:r rules/vendor_overrides.sql
:r load/90_finalize_load.sql
:r load/99_validation_checks.sql
