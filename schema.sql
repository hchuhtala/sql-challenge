CREATE TABLE "titles" (
    "title_id" VARCHAR(5)   NOT NULL PRIMARY KEY,
    "title" VARCHAR(50)   NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL PRIMARY KEY,
    "emp_title_id" VARCHAR(5)   NOT NULL,
    "birth_date" VARCHAR(10)   NOT NULL,
    "first_name" VARCHAR(255)   NOT NULL,
    "last_name" VARCHAR(255)   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" VARCHAR(10)   NOT NULL
);
	
CREATE TABLE "department_names" (
    "dept_no" VARCHAR(4) NOT NULL PRIMARY KEY,
    "dept_name" VARCHAR(100)   NOT NULL
);

CREATE TABLE "departments_employees" (
    "emp_no" INT   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    "dept_no" VARCHAR(4)   NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES department_names(dept_no)
);

CREATE TABLE "departments_managers" (
    "dept_no" VARCHAR(4)   NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES department_names(dept_no),
    "emp_no" INT   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    "salary" INT   NOT NULL
);

ALTER TABLE "employees" ADD CONSTRAINT "emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");
