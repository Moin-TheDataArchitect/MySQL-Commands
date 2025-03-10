-- CASE STATEMENTS

SELECT first_name,
last_name,
age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 30 AND 50 THEN 'Old'
    WHEN age >= 50 THEN 'Very Old'
END AS Age_Bracket
FROM employee_demographics
;

SELECT first_name, Last_name, salary,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05)
    WHEN salary > 50000 THEN salary + (salary * 0.07)
END AS New_Increment,
CASE 
	WHEN dept_id = 6 THEN salary * 0.10
END AS Bonus
FROM employee_salary
;


SELECT *
FROM parks_departments;

