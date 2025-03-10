SELECT *
FROM employee_demographics;

SELECT *
FROM employee_demographics
LIMIT 2,1
;

SELECT gender, AVG(age) Avg_age
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;