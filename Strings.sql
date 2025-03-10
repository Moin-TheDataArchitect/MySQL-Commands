
SELECT first_name, length(first_name)
FROM employee_demographics
;

SELECT first_name, upper(first_name)
FROM employee_demographics
;

SELECT first_name, lower(first_name)
FROM employee_demographics
;

SELECT rtrim('    Sky        ');

SELECT first_name, birth_date,
left(first_name, 4),
right(first_name, 4),
substring(first_name,3,2),
substring(birth_date,6,2)
FROM employee_demographics
;

SELECT first_name, replace(first_name,'a','z')
FROM employee_demographics
;

SELECT first_name, locate('An',first_name)
FROM employee_demographics
;

SELECT first_name, last_name,
concat(first_name, ' ' ,last_name)
FROM employee_demographics
;