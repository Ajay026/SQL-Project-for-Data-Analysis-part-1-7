SELECT * FROM LOCATIONS;
SELECT * FROM DEPARTMENTS;
SELECT * FROM JOBS;
SELECT * FROM EMPLOYEES;
SELECT * FROM JOB_HISTORY;
SELECT * FROM REGIONS;
SELECT * FROM COUNTRIES;



/************************** Find employee and department details based on specific condition **************************/

-- Find department details under postal code 98199.
SELECT *
FROM LOCATIONS
WHERE POSTAL_CODE = '98199';

SELECT * FROM DEPARTMENTS WHERE LOCATION_ID = 1700;


-- Find department name under postal code 98199.
SELECT DEPARTMENT_NAME
FROM DEPARTMENTS
WHERE LOCATION_ID = 1700;


-- Find department details which does not belong to postal code 98199.
SELECT DEPARTMENT_NAME
FROM DEPARTMENTS
WHERE LOCATION_ID != 1700;


-- Find employees details whose salary is more then 10000.
SELECT *
FROM EMPLOYEES
WHERE SALARY > 10000;


-- Find employee name, email and phone number where salary is more then 10000.
SELECT FIRST_NAME,
  LAST_NAME,
  EMAIL,
  PHONE_NUMBER
FROM EMPLOYEES
WHERE SALARY > 10000;


-- Find employee details who belongs to marketing department and has salary less then or equal to 6000.
SELECT *
FROM DEPARTMENTS
WHERE DEPARTMENT_NAME = 'Marketing';

SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID = 20 AND SALARY <= 6000;



/************************** Display records in a ordered manner and deal with NULL values. **************************/

-- Find employees details where commission pct is available.
SELECT * 
FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL;


-- Find employee details where manager is not available.
SELECT * 
FROM EMPLOYEES
WHERE MANAGER_ID IS NULL;


-- List down employee name in ascending order.
SELECT first_name||' '||last_name
FROM EMPLOYEES
ORDER BY first_name, last_name;


-- Find locations of UK country in ascending order of postal code.
SELECT * 
FROM LOCATIONS
WHERE COUNTRY_ID = 'UK'
ORDER BY POSTAL_CODE;


-- Find locations of UK country in descending order of postal code.
SELECT * 
FROM LOCATIONS
WHERE COUNTRY_ID = 'UK'
ORDER BY POSTAL_CODE DESC;


-- Find locations of UK country in ascending order of postal code but nulls should be at top.
SELECT * 
FROM LOCATIONS
WHERE COUNTRY_ID = 'UK'
ORDER BY POSTAL_CODE NULLS FIRST;


-- Find all the locations and arrange country in ascending and city in descending order.
SELECT * 
FROM LOCATIONS
ORDER BY COUNTRY_ID ASC, CITY DESC;


/************************** Search for specified pattern in a column. (Like, wildcards, in) **************************/


-- Find employees who work as President, Administration Vice President and Administration Assistant.
SELECT * 
FROM JOBS 
WHERE JOB_TITLE IN ('President', 'Administration Vice President' ,'Administration Assistant');

SELECT FIRST_NAME, LAST_NAME, EMAIL, JOB_ID
FROM EMPLOYEES 
WHERE JOB_ID IN ('AD_ASST', 'AD_PRES', 'AD_VP');


--Find employees who does not work as Finance Manager, Accountant and Shipping Clerk.

select * 
FROM JOBS
WHERE JOB_TITLE IN ('Finance Manager', 'Accountant', 'Shipping Clerk');

SELECT FIRST_NAME, LAST_NAME, EMAIL, JOB_ID
FROM EMPLOYEES 
WHERE JOB_ID NOT IN ('FI_MGR', 'FI_ACCOUNT', 'SH_CLERK');


-- Find employees whose job id starts with AD.
SELECT FIRST_NAME, LAST_NAME, EMAIL, JOB_ID
FROM EMPLOYEES 
WHERE JOB_ID LIKE 'AD%';


--Find all the employees whose job id does not starts with SA

SELECT FIRST_NAME, LAST_NAME, EMAIL, JOB_ID
FROM EMPLOYEES 
WHERE JOB_ID NOT LIKE 'SA%';


--Find all the employees whose job id neither starts with SA or SH
SELECT FIRST_NAME, LAST_NAME, EMAIL, JOB_ID
FROM EMPLOYEES 
WHERE JOB_ID NOT LIKE 'SA%'
AND JOB_ID NOT LIKE 'SH%';


--Find all the locations which starts with S
SELECT * 
FROM LOCATIONS
WHERE CITY LIKE 'S%';


--Find all the locations where street address has Rd in it.
SELECT * 
FROM LOCATIONS
WHERE STREET_ADDRESS LIKE '%Rd%';



/************************** Add, Update and Delete employees **************************/

-- Add new employee in the table.
SELECT * FROM EMPLOYEES ORDER BY EMPLOYEE_ID DESC;

Insert into EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)
VALUES 
   ( 207
   , 'Rahul'
   , 'Dravid'
   , 'rd@gmail.comm'
   , '515.123.9999'
   , TO_DATE('29-NOV-2021', 'dd-MON-yyyy')
   , 'HR_REP'
   , 24000
   , NULL
   , 101
   , 40
   );
   

-- Update the existing record which has incorrect data.
UPDATE EMPLOYEES 
SET EMAIL = 'rd@gmail.com'
WHERE EMPLOYEE_ID = 207;


--Update COMMISSION_PCT to 0 where COMMISSION_PCT is not available.
UPDATE EMPLOYEES 
SET COMMISSION_PCT = 0
WHERE COMMISSION_PCT IS NULL;


-- Remove the employee from table.
DELETE FROM EMPLOYEES 
WHERE EMPLOYEE_ID = 207;


-- Create backup table of employee.
CREATE TABLE EMPLOYEE_BACKUP AS (
SELECT * FROM EMPLOYEES);


/************************** Create backup of employee table and Commit and Rollback data **************************/


-- Create backup table of employee.
CREATE TABLE EMPLOYEE_BACKUP AS (
SELECT * FROM EMPLOYEES);

SELECT * FROM EMPLOYEE_BACKUP;


--Remove all the records from table.
TRUNCATE TABLE EMPLOYEE_BACKUP;


--Insert all the records of employee table into backup table.
INSERT INTO EMPLOYEE_BACKUP
SELECT * FROM EMPLOYEES;
COMMIT;


--Drop table.
DROP TABLE EMPLOYEE_BACKUP;