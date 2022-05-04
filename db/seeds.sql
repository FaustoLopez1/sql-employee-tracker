USE department_db;

INSERT INTO department (name)
VALUES  ('Engineering'),
        ('Finance'),
        ('Legal'),
        ('Sales');

INSERT INTO role (title, salary, department_id)
VALUES
('Sales Lead', 100000, 1),
('Saleperson', 80000, 2),
('Lead Engineer', 150000, 3),
('Software Engineer', 120000, 4),
('Account Manager', 160000, 5),
('Accountant', 125000, 6),
('Legal Team Lead', 250000, 7),
('Lawyer', 190000, 8);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES 
('John', 'Doe', 1, 357),
('Mike', 'Chan', 2, 189),
('Ashley', 'Rodriguez', 3, 279),
('Kevin', 'Tupik', 4, 222),
('Kunal', 'Singh', 5, 555),
('Malia', 'Brown', 6, 333),
('Sarah', 'Lourd', 7, 777),
('Tom', 'Allen', 8, 444);