-- Stored Procedures

SELECT *
FROM employee_salary
WHERE salary >= 50000
;

CREATE PROCEDURE Large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000
;

CALL Large_salaries();

DELIMITER $$
CREATE PROCEDURE Large_Salaries2()
BEGIN
SELECT *
FROM employee_salary
WHERE salary > 50000;
SELECT *
FROM employee_salary
WHERE salary > 10000
;
END $$
Delimiter ;

CALL large_salaries2();

CALL new_procedure();

DELIMITER $$
CREATE PROCEDURE Large_Salaries3(pemployee_id INT)
BEGIN
	SELECT salary
	FROM employee_salary
	WHERE employee_id = pemployee_id
	;
END $$
Delimiter ;

CALL Large_Salaries3(1)


