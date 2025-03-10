SELECT *
FROM employee_demographics;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

SELECT *
FROM employee_salary;

SELECT  salary, AVG(salary), COUNT(salary)
FROM employee_salary
GROUP BY  salary
;

SELECT *
FROM employee_demographics
ORDER BY gender, age
;