SELECT COUNT(*) FROM EMPLOYEES
SELECT * FROM SALARIES
--1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT E.EMP_NO, E.LAST_NAME, E.FIRST_NAME, E.GENDER, S.SALARY
FROM EMPLOYEES E 
INNER JOIN SALARIES S ON E.EMP_NO = S.EMP_NO
ORDER BY E.EMP_NO

--2. List employees who were hired in 1986.
SELECT E.EMP_NO, E.LAST_NAME, E.FIRST_NAME, E.HIRE_DATE
FROM EMPLOYEES E
WHERE DATE_PART('YEAR',E.HIRE_DATE) =1986

--3. List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name, and start and end employment dates.

SELECT D.DEPT_NO, D.DEPT_NAME, DM.EMP_NO, E.LAST_NAME, E.FIRST_NAME, DM.FROM_DATE, DM.TO_DATE
FROM DEPARTMENTS D 
LEFT JOIN DEPT_MANAGER DM ON D.DEPT_NO = DM.DEPT_NO
INNER JOIN EMPLOYEES E ON DM.EMP_NO = E.EMP_NO
ORDER BY D.DEPT_NAME

--4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

SELECT E.EMP_NO, E.LAST_NAME, E.FIRST_NAME, D.DEPT_NAME
FROM DEPARTMENTS D
INNER JOIN DEPT_EMP DE ON D.DEPT_NO = DE.DEPT_NO
LEFT JOIN EMPLOYEES E ON DE.EMP_NO = E.EMP_NO
ORDER BY E.EMP_NO

--5. List all employees whose first name is "Hercules" and last names begin with "B."
