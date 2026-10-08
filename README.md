# PL/SQL GOTO statement and Functions

**Student Name:** Florence Ishimwe  
**Student ID:** 20251SEN040  
**Course:** Database development with PL/SQL
**Database System:** Oracle Database 21c Express Edition
**Development Environment:** SQL Developer  

---

## Overview

This project demonstrates core PL/SQL concepts, including:
- Control flow branching using `GOTO` statements vs. structured `IF-ELSIF-ELSE` logic.
- Compilation scope rules and resolving error `PLS-00375`.
- Development of reusable Stored Functions (`annual salary`, `years of service`, `tax`, `department name`, `payroll validation`).
- Embedding functions directly inside SQL `SELECT` queries (`B5`).
- System and user-defined exception handling (`C1`).

---

## Repository Structure

```text
.
├── .gitignore
├── README.md
├── 00_setup/
│   └── create_tables.sql             # Schema creation and sample data
├── 01_goto/
│   ├── A1_number_classifier.sql      # GOTO branching logic
│   ├── A2_salary_review.sql          # Salary classification using GOTO
│   ├── A3_illegal_goto.sql           # PLS-00375 scope error and fix
│   └── A4_rewrite_no_goto.sql        # Refactored with IF/ELSIF/ELSE
├── 02_functions/
│   ├── B1_fn_annual_salary.sql       # Annual salary function
│   ├── B2_fn_years_of_service.sql    # Employee tenure function
│   ├── B3_fn_calculate_tax.sql       # Tax calculation function
│   ├── B4_fn_dept_name.sql           # Department name function
│   └── C1_fn_validate_payroll.sql    # Payroll validation function
├── 03_tests/
│   ├── B5_functions_in_select.sql    # Functions used inside SELECT
│   ├── test_functions.sql            # Tests for B1-B4
│   └── test_validate_payroll.sql     # Tests for C1
├── screenshots/
│   ├── A1_output.png
│   ├── A2_output.png
│   ├── A3_error_and_fix.png
│   ├── A4_output.png
│   ├── B5_select_output.png
│   └── C1_output.png
└── docs/
    └── REFLECTION.md
```
