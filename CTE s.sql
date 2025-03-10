-- CTEs = COMMON TABLE EXPRESSIONS

WITH CTE_Example (Gender, Avg_Sal, Max_Sal, Min_Sal, Count_Sal) AS 
(
SELECT gender, AVG(salary) Avg_Salary, MAX(salary) Max_Salary, MIN(salary) Min_Salary, COUNT(salary) Count_salary
FROM employee_demographics dem
JOIN employee_salary sal
   ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example
;

WITH CTE_Exapmle AS
(SELECT gender, AVG(salary) Avg_Salary, MAX(salary) Max_Salary, MIN(salary) Min_Salary, COUNT(salary) Count_salary
FROM employee_demographics dem
JOIN employee_salary sal
   ON dem.employee_id = sal.employee_id
GROUP BY gender)
SELECT AVG(Avg_Salary)
FROM CTE_Exapmle
;


WITH CTE_Exapmle AS
(
SELECT employee_id, gender, birth_date
FROM employee_demographics 
WHERE birth_date > '1985-01-01'
),
CTE_Example2 AS
(
SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_Exapmle
JOIN CTE_Example2
	ON CTE_Exapmle.employee_id = CTE_Example2.employee_id
;


