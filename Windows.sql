-- Window Functions

SELECT gender, AVG(salary)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
;

SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_Total,
ROW_NUMBER() OVER(PARTITION BY gender) Row_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS Dense_rank_num, 
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) Rank_num
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;