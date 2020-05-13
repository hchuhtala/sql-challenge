--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, "last_name", "first_name", "sex", "salary" 
FROM employees AS e
JOIN salaries AS s
ON e.emp_no = s.emp_no
LIMIT 50;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT "emp_no", "last_name", "first_name", "hire_date"
FROM employees
WHERE hire_date LIKE '%86'

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no, dn.dept_name, e.emp_no, "last_name", "first_name"
FROM departments_managers AS dm
JOIN employees AS e
ON e.emp_no = dm.emp_no
JOIN department_names AS dn
ON dm.dept_no = dn.dept_no
LIMIT 50;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT  e.emp_no, "last_name", "first_name", de.dept_no, dn.dept_name
FROM employees AS e
JOIN departments_employees AS de
ON e.emp_no = de.emp_no
JOIN department_names AS dn
ON de.dept_no = dn.dept_no
LIMIT 50;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT emp_no, "last_name", "first_name", "sex"
FROM employees AS e
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
LIMIT 50;

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT de.dept_no, dn.dept_name, e.emp_no, "last_name", "first_name"
FROM departments_employees AS de
JOIN employees AS e
ON e.emp_no = de.emp_no
JOIN department_names AS dn
ON de.dept_no = dn.dept_no
WHERE dn.dept_name = 'Sales'
LIMIT 50;

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT de.dept_no, dn.dept_name, e.emp_no, "last_name", "first_name"
FROM departments_employees AS de
JOIN employees AS e
ON e.emp_no = de.emp_no
JOIN department_names AS dn
ON de.dept_no = dn.dept_no
WHERE dn.dept_name = 'Sales'
OR dn.dept_name = 'Development'
LIMIT 50;

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT "last_name", COUNT(*) FROM employees
GROUP BY "last_name"
