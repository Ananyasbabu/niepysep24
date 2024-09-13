SELECT * FROM employees WHERE name='Bob Brown';

-- to query th ebob based name starts with
SELECT * FROM employees WHERE name LIKE 'bob%'

-- to query the bob based based name end with
SELECT * FROM employees WHERE  name LIKE '%brown';

-- to display name, salary ,bonus ,total_salaru for all emplyoyess

SELECT name,salary,bonus,salary + bonus as total_salay from employees

-- to display the name, bonus,change_percentage, change_bonus 
SELECT name,bonus,15 as change_percentage,bonus/100*115 as changede_bonus from employees;

SELECT name,bonus,15 as change_per,
(BONUS+(BONUS/100.0*15.0)) AS changed_bonus from employees;

-- filtering|conditional query | where condition

SELECT * FROM employees WHERE bonus>1;

SELECT * FROM employees WHERE bonus>4000 and bonus<7000;

SELECT * FROM employees WHERE bonus in (4500,6000);

SELECT * FROM employees WHERE not (bonus=6000 or bonus= 4000)

-- sort emplyoyees based on name a-z order by
SELECT * From employees order by name asc;
SELECT * From employees order by name desc;

SELECT * From employees order by bonus desc limit 3;

SELECT * From employees order by bonus desc  limit 3 offset 3;