-- Triggers

SELECT *
FROM employee_demographics;

SELECT*
FROM employee_salary;

DELIMITER $$
CREATE TRIGGER employee_insert
AFTER INSERT ON employee_demographics
FOR EACH ROW
BEGIN
	INSERT INTO employee_salary (employee_id, first_name, last_name)
    VALUES(NEW.employee_id, NEW.first_name, NEW.last_name)
;
END $$
DELIMITER ;

INSERT INTO employee_demographics(employee_id, first_name, last_name, age,
gender, birth_date)
VALUES(14, 'Abcd', 'Uvuxyz', 75, 'Male', '1994-04-30');
 
 
 -- EVENTS
 
 SELECT *
 FROM employee_demographics;
 
 DELIMITER $$
 CREATE EVENT Delete_Retires1
 ON SCHEDULE EVERY 30 SECOND
 DO
 BEGIN
	DELETE
	FROM employee_demographics
    WHERE age >= 60;
END $$
DELIMITER ;

SHOW VARIABLES LIKE 'event%'
 