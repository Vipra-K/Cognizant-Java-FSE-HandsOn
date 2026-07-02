# Control Structures in PL/SQL

## Overview

This project demonstrates the use of **PL/SQL Control Structures** through a simple banking system. It covers looping, conditional statements, updating records, joining tables, and displaying output using `DBMS_OUTPUT`.

The project consists of three scenarios:

1. Apply a 1% loan interest discount for customers above 60 years of age.
2. Promote customers with a balance greater than 10,000 to VIP status.
3. Print reminder messages for customers whose loan due date falls within the next 30 days.

---

## Project Structure

```
ControlStructures/
│
├── 01_tables.sql
├── 02_sample_data.sql
├── 03_scenario1_discount.sql
├── 04_scenario2_vip.sql
├── 05_scenario3_reminders.sql
└── README.md
```

---

## Database Schema

### CUSTOMERS

| Column        | Description      |
| ------------- | ---------------- |
| CUSTOMER_ID   | Primary Key      |
| CUSTOMER_NAME | Customer Name    |
| AGE           | Customer Age     |
| BALANCE       | Account Balance  |
| IS_VIP        | VIP Status (Y/N) |

### LOANS

| Column        | Description                       |
| ------------- | --------------------------------- |
| LOAN_ID       | Primary Key                       |
| CUSTOMER_ID   | Foreign Key referencing CUSTOMERS |
| LOAN_AMOUNT   | Loan Amount                       |
| INTEREST_RATE | Current Loan Interest Rate        |
| DUE_DATE      | Loan Due Date                     |

---

## Scenarios

### Scenario 1 – Interest Rate Discount

**Objective**

Apply a **1% reduction** in loan interest rates for customers whose age is greater than **60 years**.

**PL/SQL Concepts Used**

* Cursor FOR Loop
* IF Statement
* UPDATE Statement
* COMMIT

---

### Scenario 2 – VIP Promotion

**Objective**

Update the `IS_VIP` column to `'Y'` for customers whose account balance is greater than **10,000**.

**PL/SQL Concepts Used**

* Cursor FOR Loop
* IF Statement
* UPDATE Statement
* COMMIT

---

### Scenario 3 – Loan Reminder

**Objective**

Display reminder messages for customers whose loan due dates fall within the next **30 days**.

**PL/SQL Concepts Used**

* Cursor FOR Loop
* JOIN
* BETWEEN
* DBMS_OUTPUT.PUT_LINE
* TO_CHAR

---

## Execution Order

Run the SQL files in the following order:

1. `01_tables.sql`
2. `02_sample_data.sql`
3. `03_scenario1_discount.sql`
4. `04_scenario2_vip.sql`
5. `05_scenario3_reminders.sql`

---

## Expected Learning Outcomes

After completing this project, you will understand how to:

* Create relational tables with primary and foreign keys.
* Insert sample data into Oracle tables.
* Use PL/SQL control structures.
* Iterate through records using Cursor FOR Loops.
* Apply conditional logic using IF statements.
* Update database records.
* Retrieve data using JOIN operations.
* Print formatted output using `DBMS_OUTPUT.PUT_LINE`.
* Execute PL/SQL scripts in a structured and professional workflow.

---

## Technologies Used

* Oracle Database
* SQL
* PL/SQL
* Oracle SQL Developer

