-- Sample data for Employee Management System

-- Insert positions
INSERT INTO positions (title, description, min_salary, max_salary)
VALUES
('CEO', 'Chief Executive Officer', 250000, 500000),
('HR Manager', 'Human Resources Manager', 80000, 120000),
('Software Engineer', 'Develops software applications', 70000, 110000),
('Marketing Specialist', 'Handles marketing campaigns', 50000, 85000),
('Accountant', 'Manages financial records', 55000, 90000);

-- Insert departments (managers will be added after employees)
INSERT INTO departments (name, location, budget, established_date)
VALUES
('Executive', 'Floor 10', 1000000, '2020-01-01'),
('Human Resources', 'Floor 2', 500000, '2020-01-01'),
('Engineering', 'Floor 5', 1500000, '2020-01-01'),
('Marketing', 'Floor 3', 800000, '2020-01-01'),
('Finance', 'Floor 4', 700000, '2020-01-01');

-- Insert employees
INSERT INTO employees (first_name, last_name, email, phone, hire_date, position_id, department_id, status)
VALUES
('John', 'Smith', 'john.smith@company.com', '555-1001', '2020-01-15', 1, 1, 'active'),
('Sarah', 'Johnson', 'sarah.johnson@company.com', '555-1002', '2020-02-10', 2, 2, 'active'),
('Michael', 'Williams', 'michael.williams@company.com', '555-1003', '2020-03-05', 3, 3, 'active'),
('Emily', 'Brown', 'emily.brown@company.com', '555-1004', '2020-04-20', 4, 4, 'active'),
('David', 'Jones', 'david.jones@company.com', '555-1005', '2020-05-15', 5, 5, 'active'),
('Jennifer', 'Garcia', 'jennifer.garcia@company.com', '555-1006', '2021-01-10', 3, 3, 'active'),
('Robert', 'Miller', 'robert.miller@company.com', '555-1007', '2021-02-15', 3, 3, 'active'),
('Jessica', 'Davis', 'jessica.davis@company.com', '555-1008', '2021-03-20', 4, 4, 'active');

-- Update managers for departments
UPDATE departments SET manager_id = 1 WHERE department_id = 1;
UPDATE departments SET manager_id = 2 WHERE department_id = 2;
UPDATE departments SET manager_id = 3 WHERE department_id = 3;
UPDATE departments SET manager_id = 4 WHERE department_id = 4;
UPDATE departments SET manager_id = 5 WHERE department_id = 5;

-- Update employee managers
UPDATE employees SET manager_id = 1 WHERE employee_id IN (2, 3, 4, 5);
UPDATE employees SET manager_id = 3 WHERE employee_id IN (6, 7);
UPDATE employees SET manager_id = 4 WHERE employee_id = 8;

-- Insert salary records
INSERT INTO salaries (employee_id, amount, effective_date, reason, approved_by)
VALUES
(1, 300000, '2020-01-15', 'Initial hire', 1),
(2, 90000, '2020-02-10', 'Initial hire', 1),
(3, 85000, '2020-03-05', 'Initial hire', 1),
(4, 65000, '2020-04-20', 'Initial hire', 1),
(5, 70000, '2020-05-15', 'Initial hire', 1),
(6, 75000, '2021-01-10', 'Initial hire', 3),
(7, 80000, '2021-02-15', 'Initial hire', 3),
(8, 55000, '2021-03-20', 'Initial hire', 4),
(3, 95000, '2022-01-01', 'Promotion', 1),
(6, 80000, '2022-01-01', 'Annual raise', 3),
(7, 85000, '2022-01-01', 'Annual raise', 3);

-- Insert tasks
INSERT INTO tasks (title, description, assigned_to, assigned_by, assigned_date, due_date, status, priority)
VALUES
('Implement authentication', 'Implement user authentication for new portal', 6, 3, '2023-01-10', '2023-02-15', 'completed', 'high'),
('Design marketing campaign', 'Create Q2 marketing campaign for new product', 8, 4, '2023-02-01', '2023-03-01', 'in_progress', 'medium'),
('Update financial reports', 'Prepare monthly financial reports for board meeting', 5, 1, '2023-02-15', '2023-02-25', 'not_started', 'high'),
('Recruit new engineers', 'Conduct interviews for 2 new software engineers', 2, 1, '2023-01-15', '2023-03-31', 'in_progress', 'medium');

-- Insert performance reviews
INSERT INTO performance_reviews (employee_id, reviewed_by, review_date, performance_score, strengths, areas_for_improvement, comments)
VALUES
(6, 3, '2022-12-15', 4, 'Excellent technical skills, great team player', 'Could improve documentation', 'Very valuable team member'),
(7, 3, '2022-12-15', 3, 'Strong problem-solving skills', 'Needs to improve time management', 'Making good progress'),
(8, 4, '2022-12-20', 5, 'Creative and innovative', 'None noted', 'Exceptional performance');

-- Insert leave records
INSERT INTO leave_records (employee_id, leave_type, start_date, end_date, status, reason, approved_by)
VALUES
(6, 'vacation', '2023-03-01', '2023-03-10', 'approved', 'Family vacation', 3),
(7, 'sick', '2023-01-05', '2023-01-06', 'approved', 'Flu', 3),
(8, 'personal', '2023-02-15', '2023-02-15', 'approved', 'Personal day', 4);

-- Insert users
INSERT INTO users (username, password_hash, employee_id, role)
VALUES
('admin', 'hashed_admin_password', 1, 'admin'),
('hr', 'hashed_hr_password', 2, 'hr'),
('eng_manager', 'hashed_eng_password', 3, 'manager'),
('marketing_manager', 'hashed_marketing_password', 4, 'manager'),
('finance_manager', 'hashed_finance_password', 5, 'manager'),
('dev1', 'hashed_dev1_password', 6, 'employee'),
('dev2', 'hashed_dev2_password', 7, 'employee'),
('marketing1', 'hashed_marketing1_password', 8, 'employee');
