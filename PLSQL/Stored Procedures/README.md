# Stored Procedures in PL/SQL

## Overview

This project demonstrates the implementation of **Stored Procedures** in PL/SQL using a banking system. It covers updating account balances, employee salary bonuses, and transferring funds between accounts.

---

## Project Structure

StoredProcedures/
│
├── 01_tables.sql
├── 02_sample_data.sql
├── 03_process_monthly_interest.sql
├── 04_update_employee_bonus.sql
├── 05_transfer_funds.sql
└── README.md

---

## Database Tables

### ACCOUNTS

- ACCOUNT_ID (Primary Key)
- CUSTOMER_NAME
- ACCOUNT_TYPE
- BALANCE

### EMPLOYEES

- EMPLOYEE_ID (Primary Key)
- EMPLOYEE_NAME
- DEPARTMENT
- SALARY

---

## Scenarios

### Scenario 1 – Process Monthly Interest

Creates a stored procedure named **ProcessMonthlyInterest** that applies a **1% interest** to all savings accounts.

### Scenario 2 – Update Employee Bonus

Creates a stored procedure named **UpdateEmployeeBonus** that increases employee salaries based on department and bonus percentage supplied as parameters.

### Scenario 3 – Transfer Funds

Creates a stored procedure named **TransferFunds** that transfers money between two accounts after checking whether the source account has sufficient balance.

---

## Execution Order

1. 01_tables.sql
2. 02_sample_data.sql
3. 03_process_monthly_interest.sql
4. 04_update_employee_bonus.sql
5. 05_transfer_funds.sql

---

## Concepts Covered

- Stored Procedures
- Procedure Parameters
- UPDATE Statement
- SELECT INTO
- IF-ELSE
- Variables
- DBMS_OUTPUT
- COMMIT
- Transaction Processing

---
