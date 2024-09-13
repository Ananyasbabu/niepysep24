DROP DATABASE IF EXISTS EmployeeManagementDb;
CREATE DATABASE IF NOT EXISTS EmployeeManagementDb;

USE EmployeeManagementdB;

DROP TABLE IF EXISTS Departments;
CREATE TABLE IF NOT EXISTS Departments
(
id INT PRIMARY KEY auto_increment,
name VARCHAR(255) NOT NULL
);

DESC departments;
SELECT * FROM departments;


DROP TABLE IF EXISTS employees;
CREATE TABLE IF NOT EXISTS employees
(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
dept_id INT ,
job_title VARCHAR(100) NOT NULL,
bonus FLOAT NOT NULL,
FOREIGN KEY(dept_id) REFERENCES departments(id)
);
DESC employees;
SELECT * FROM employees ;

 DROP TABLE IF EXISTS projects;
        CREATE TABLE IF NOT EXISTS projects (
            id INT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(255) NOT NULL,
            budget DECIMAL(15, 2) NOT NULL
        );
        SELECT * FROM projects;
        
DROP TABLE IF EXISTS assigments;
CREATE TABLE IF NOT EXISTS assigments(
id INT PRIMARY KEY AUTO_INCREMENT,
employee_id INT NOT NULL,
project_id INT NOT NULL,
role VARCHAR(255) NOT NULL,
FOREIGN key(employee_id) REFERENCES employees(id),
FOREIGN KEY(project_id) REFERENCES projects(id)
);

SELECT * FROM assigments;