SELECT *
FROM employee_demographics;

SELECT *
FROM employee_demographics
WHERE first_name = 'leslie'
;

SELECT *
FROM employee_salary
WHERE salary >= 50000
;
SELECT *
FROM employee_demographics
WHERE gender != 'female'
;
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male'
;
SELECT *
FROM employee_demographics
WHERE (first_name = 'leslie' AND age = 44) OR age > 55
;
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%'
;

