    -- ==============================================================================
-- RUN THIS SCRIPT TO GENERATE YOUR PRACTICE DATABASE
-- You can paste this into a free tool like https://sqliteonline.com/
-- ==============================================================================

-- 1. Create the Departments Table
CREATE TABLE departments (
    dept_id INTEGER PRIMARY KEY,
    dept_name TEXT NOT NULL,
    location TEXT
);

-- 2. Create the Employees Table
CREATE TABLE employees (
    emp_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT,
    dept_id INTEGER,
    hire_date TEXT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- 3. Create the Projects Table
CREATE TABLE projects (
    project_id TEXT PRIMARY KEY,
    project_name TEXT NOT NULL,
    emp_id INTEGER,
    start_date TEXT,
    status TEXT,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

-- ==============================================================================
-- INSERTING THE DATA (Matches your Day07_demo.db)
-- ==============================================================================

-- Insert Departments
INSERT INTO departments (dept_id, dept_name, location) VALUES 
(1, 'IT', 'Manila'),
(2, 'HR', 'Cebu City'),
(3, 'Finance', 'Manila'),
(4, 'Sales', 'Davao City'),
(5, 'Operations', 'Quezon City'),
(6, 'Marketing', 'Makati City'); -- *NEW* Empty department for practice!

-- Insert Employees
INSERT INTO employees (emp_id, name, email, dept_id, hire_date) VALUES 
(1, 'Maria Santos', 'maria.santos@company.com', 1, '2022-01-15'),
(2, 'Juan Dela Cruz', 'juan.delacruz@company.com', 1, '2021-03-20'),
(3, 'Ana Reyes', 'ana.reyes@company.com', 2, '2022-05-10'),
(4, 'Carlos Garcia', 'carlos.garcia@company.com', 1, '2020-11-05'),
(5, 'Sofia Mendoza', 'sofia.mendoza@company.com', 3, '2023-04-18'),
(6, 'Miguel Torres', 'miguel.torres@company.com', 3, '2022-08-22'),
(7, 'Isabella Cruz', 'isabella.cruz@company.com', 1, '2022-05-01'),
(8, 'Rafael Aquino', 'rafael.aquino@company.com', 4, '2021-01-30'),
(9, 'Patricia Lim', 'patricia.lim@company.com', 5, '2023-06-15'),
(10, 'Daniel Tan', 'daniel.tan@company.com', 1, '2022-06-10'),
(11, 'Angela Rivera', 'angela.rivera@company.com', 3, '2021-02-14'),
(12, 'Roberto Flores', 'roberto.flores@company.com', NULL, '2024-01-05');

-- Insert Projects
INSERT INTO projects (project_id, project_name, emp_id, start_date, status) VALUES 
('P-001', 'Database Migration', 1, '2025-01-10', 'In Progress'),
('P-002', 'Network Upgrade', 1, '2025-02-15', 'Completed'),
('P-003', 'Q1 Budget Review', 5, '2025-01-20', 'Completed'),
('P-004', 'Onboarding Revamp', 3, '2025-02-01', 'In Progress'),
('P-005', 'Server Refresh', 4, '2025-01-05', 'Completed'),
('P-006', 'Logistics Audit', 9, '2025-03-01', 'In Progress'),
('P-007', 'Q2 Sales Campaign', 8, '2025-03-10', 'Planning'),
('P-008', 'Mobile App Project', 7, '2025-02-20', 'In Progress'),
('P-009', 'Compliance Training', 6, '2025-01-25', 'Completed'),
('P-010', 'Davao Expansion', 8, '2025-03-05', 'Planning');

-- Setup complete! You can now run your practice queries.
