DROP DATABASE IF EXISTS department_db;
CREATE DATABASE department_db;

USE department_db;
-- TODO: Define movies table
CREATE TABLE department(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

-- TODO: Define reviews table
CREATE TABLE role(
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE employee(
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL, 
  manager_id INT,
  CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id),
  PRIMARY KEY (id)
);