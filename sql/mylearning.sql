--  to create database

Create Database EmployeeManagementDb;

-- to select database
USE EmployeeManagementDb;

-- to create table
CREATE TABLE Person
(
id INT Primary Key auto_increment,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL
);

/*CREATE TABLE Person
(
id INT Primary Key auto_increment,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL
);*/

desc person;
select * from person;

insert into person(first_name,last_name)
values("ananya","sharma");
SELECT *FROM Person WHERE id=1;

UPDATE person 
SET last_name="hi"
WHERE id=1;

-- department(id,name)

CREATE TABLE departments
(
id INT PRIMARY KEY auto_increment,
name VARCHAR(100) NOT NULL
);

INSERT INTO departments(name)
VALUES("Ananya"),
('Analysis'),
('Development'),
('tESting');

SELECT * FROM departments;
DELETE FROM departments
WHERE id=2;

UPDATE departments
SET name='Testing'
WHERE id=5;

INSERT INTO departments(name)
VALUES('design');