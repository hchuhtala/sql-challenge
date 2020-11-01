# sql-challenge
Fictious Employee Data was loaded into a SQL database to query and then visualize with Pandas.

# Data Engineering

![ERD](https://github.com/hchuhtala/sql-challenge/blob/master/Employee%20ERD.png)

<p>CSV files were loaded into SQL tables, as depicted above, using the [schema](https://github.com/hchuhtala/sql-challenge/blob/master/schema.sql) </p>

# Data Analysis
* Different [queries](https://github.com/hchuhtala/sql-challenge/blob/master/query.sql) were run to answer a variety of questions about the employees. For example, Find any employees whose first name is Hercules and last name starts with a B

```
SELECT emp_no, "last_name", "first_name", "sex"
FROM employees AS e
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
LIMIT 50;
```
* Additional analysis was done with Pandas to visualize the salary data

![](https://github.com/hchuhtala/sql-challenge/blob/master/avg_salary_title.png)


