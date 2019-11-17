-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/FYISEo
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "departments" (
    "dept_no" int   NOT NULL,
    "dept_name" string   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

-- Address1 string
-- Address2 NULL string
-- Address3 NULL string
CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" int   NOT NULL,
    "from_date" int   NOT NULL,
    "to_Date" int   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "dept_manager" (
    "dept_no" int   NOT NULL,
    "to_date" int   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "birth_date" int   NOT NULL,
    "first_name" string   NOT NULL,
    "last_name" string   NOT NULL,
    "gender" string   NOT NULL,
    "hire_date" int   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    "from_date" int   NOT NULL,
    "to_date" int   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "titles" (
    "emp_no" int   NOT NULL,
    "title" string   NOT NULL,
    "from_date" int   NOT NULL,
    "to_date" int   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "emp_no"
     )
);

CREATE INDEX "idx_departments_dept_name"
ON "departments" ("dept_name");

