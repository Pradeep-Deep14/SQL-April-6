SELECT * FROM employees

--SQL QUERY TO CLASSIFY EMPLOYEES INTO THREE CATEGORIES BASED ON THEIR SALARY--

--"High" - Salary greater than $70,000
--"Medium" - Salary between $50,000 and $70,000 (inclusive)
--"Low" - Salary less than $50,000

--Your query should return the EmployeeID, FirstName, LastName, Department, Salary, and 
--a new column SalaryCategory indicating the category to which each employee belongs-


SELECT *,
	CASE
		WHEN SALARY > 70000 THEN 'High'
		WHEN SALARY BETWEEN 50000 AND 70000 THEN 'Medium'
		ELSE 'Low'
	 END AS Salary_Category
 from EMPLOYEES
 
 --COUNT OF EMPLOYEES in each salary category--
 
SELECT COUNT(*) AS COUNT,
	CASE
		WHEN SALARY > 70000 THEN 'High'
		WHEN SALARY BETWEEN 50000 AND 70000 THEN 'Medium'
		ELSE 'Low'
	 END AS Salary_Category
 from EMPLOYEES
 GROUP BY Salary_Category