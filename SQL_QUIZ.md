# 📝 SQL Joins: Online Practical Exam
### 🛠️ Quiz Instructions:

1. Open **Visual Studio Code (VS Code)** and make sure you have the **SQLTools** extension (and the SQLTools SQLite driver) installed.

2. Create a new SQLite database connection in the SQLTools sidebar.

3. Open the provided `practice_db_setup.sql` script in VS Code, connect it to your new SQLite database, and run the script to build your database schema and populate the test data.

4. Open a fresh SQL file to write your answers. For each exercise below, write a single SQL query that satisfies the business scenario and outputs the **Expected Columns** and **Expected Result**.

5. Save your `.sql` file containing all your answers and submit it as instructed by your examiner.

## Part 1: Fundamental Joins & Filtering

### 📝 Exercise 1: The "Planning" Phase Report

**💼 Business Scenario:** The Executive team wants a status update on all projects that haven't started yet. They need a list of projects currently in the **'Planning'** phase, along with the name of the employee responsible for it.

* **Your Goal:** Combine `projects` and `employees`. Filter for the 'Planning' status.

* **Expected Columns:** `project_name`, `name` (employee name).

* **Expected Result:** 2 rows (Q2 Sales Campaign, Davao Expansion).

### 📝 Exercise 2: Manila Office Overview

**💼 Business Scenario:** The IT Support team in Manila is upgrading laptops. They need a list of all employees whose department is located in **'Manila'**, sorted alphabetically by the employee's name.

* **Your Goal:** Combine `employees` and `departments`. Filter for Manila. Sort A to Z by employee name.

* **Expected Columns:** `name`, `dept_name`.

* **Expected Result:** 8 rows starting with 'Carlos Garcia'.

## Part 2: Advanced Joins & Missing Data (LEFT JOIN)

### 📝 Exercise 3: Ghost Departments

**💼 Business Scenario:** The company recently opened a new "Marketing" department in Makati City, but HR isn't sure if anyone has been officially transferred there yet.

* **Your Goal:** Find any department that currently has **zero employees**.

* **Hint:** You need to keep ALL departments using a `LEFT JOIN` and then look for where the employee's name or ID `IS NULL`.

* **Expected Columns:** `dept_name`, `location`.

* **Expected Result:** 1 row (Marketing).

### 📝 Exercise 4: The Unassigned Talent Pool

**💼 Business Scenario:** Operations is scrambling to find people to help with a massive new client. They need a list of employees who:

1. Belong to the **'IT'** department.

2. Currently have **NO assigned projects**.

* **Your Goal:** Combine `employees` and `departments` (to check for IT), and then `LEFT JOIN` to `projects` to find the empty spots (`IS NULL`).

* **Expected Columns:** `name`.

* **Expected Result:** 2 rows (Juan Dela Cruz, Daniel Tan).

## Part 3: Data Aggregation & Multi-Table Joins

### 📝 Exercise 5: Department Workload

**💼 Business Scenario:** The CEO wants to know which department is handling the most active work. Count how many **'In Progress'** projects belong to each department.

* **Your Goal:** Link Projects, Employees, and Departments. Filter for 'In Progress'. Group the results by `dept_name` and count the projects.

* **Expected Columns:** `dept_name`, `active_projects` (the count).

* **Expected Result:** IT (2 projects), HR (1 project), Operations (1 project).

### 📝 Exercise 6: The "Completed" Dashboard

**💼 Business Scenario:** It's the end of the quarter. Create a final report of all **'Completed'** projects. Show the project name, the employee who finished it, their department name, and the project start date. Sort it so the most recently started project is at the top.

* **Your Goal:** Join all 3 tables. Filter for 'Completed'. Sort descending (`DESC`) by `start_date`.

* **Expected Columns:** `project_name`, `name`, `dept_name`, `start_date`.

* **Expected Result:** 4 rows, starting with 'Network Upgrade' (2025-02-15).

 
