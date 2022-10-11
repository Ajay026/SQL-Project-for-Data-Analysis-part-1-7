/************************** 2. Remove Unwanted Features **************************/

--1. Create a new table with only required columns
CREATE TABLE ANIMAL_BITES_USERFUL_FEATURE AS
SELECT ID, BITE_DATE, SPECIESIDDESC, BREEDIDDESC, BREED, GENDERIDDESC, COLOR, VICTIM_ZIP, WHEREBITTENIDDESC, ENTRY_ID
FROM ANIMAL_BITES;


--2. DROP unwanted columns

--Create backup table
CREATE TABLE ANIMAL_BITES_BACKUP
AS
SELECT * FROM ANIMAL_BITES;

--DROP SINGLE COLUMN
ALTER TABLE ANIMAL_BITES DROP COLUMN vaccination_yrs;

--DROP MULTIPLE COLUMNS
ALTER TABLE ANIMAL_BITES DROP (  vaccination_date,
  AdvIssuedYNDesc,
  quarantine_date,
  DispositionIDDesc,
  head_sent_date,
  release_date,
  ResultsIDDesc,
  FollowupYNDesc,
  ENTRY_ID);


/************************** 3. Remove Duplicate records **************************/  
  
--Create new table with required data.
CREATE TABLE ANIMAL_BITES_UNIQUE AS
SELECT ID,
  BITE_DATE,
  SPECIESIDDESC,
  BREEDIDDESC,
  BREED,
  GENDERIDDESC,
  COLOR,
  VICTIM_ZIP,
  WHEREBITTENIDDESC
FROM
  (SELECT T.*,
    ROW_NUMBER () OVER (PARTITION BY id ORDER BY BITE_DATE DESC) rn
  FROM ANIMAL_BITES T
  ) T
WHERE RN = 1; 
    
--Remove duplicate records
DELETE
FROM ANIMAL_BITES
WHERE ROWID IN
  (SELECT ROWID
  FROM
    (SELECT T.*,
      ROW_NUMBER () OVER (PARTITION BY id ORDER BY BITE_DATE DESC) rn
    FROM ANIMAL_BITES T
    )
  WHERE RN > 1
  );


/************************** 4. Removing Missing Data **************************/  

--Create a new table with valid records
CREATE TABLE ANIMAL_BITES_MANDATORY AS
SELECT *
FROM ANIMAL_BITES
WHERE BITE_DATE   IS NOT NULL
AND SPECIESIDDESC IS NOT NULL
AND VICTIM_ZIP    IS NOT NULL;


--Remove rows with missing values in bite_date, SpeciesIDDesc, victim_zip
DELETE
FROM ANIMAL_BITES
WHERE BITE_DATE  IS NULL
OR SPECIESIDDESC IS NULL
OR VICTIM_ZIP    IS NULL;


/************************** 5. Imputing Missing Data **************************/

SELECT COUNT(*) FROM ANIMAL_BITES WHERE BREEDIDDESC IS NULL;

UPDATE ANIMAL_BITES
SET BREEDIDDESC = 'UNKNOWN'
WHERE BREEDIDDESC IS NULL;

SELECT COUNT(*) FROM ANIMAL_BITES WHERE BREED IS NULL;

UPDATE ANIMAL_BITES
SET BREED = 'UNKNOWN'
WHERE BREED IS NULL;

SELECT COUNT(*) FROM ANIMAL_BITES WHERE GENDERIDDESC IS NULL;

UPDATE ANIMAL_BITES
SET GENDERIDDESC = 'UNKNOWN'
WHERE GENDERIDDESC IS NULL;

SELECT COUNT(*) FROM ANIMAL_BITES WHERE COLOR IS NULL;

UPDATE ANIMAL_BITES
SET COLOR = 'UNKNOWN'
WHERE COLOR IS NULL;

SELECT COUNT(*) FROM ANIMAL_BITES WHERE WHEREBITTENIDDESC IS NULL;

UPDATE ANIMAL_BITES
SET WHEREBITTENIDDESC = 'UNKNOWN'
WHERE WHEREBITTENIDDESC IS NULL;


/************************** 7. Pivoting rows to columns **************************/

/*
SELECT <non-pivoted column>,  
    [first pivoted column] AS <column name>,  
    [second pivoted column] AS <column name>,  
    ...  
    [last pivoted column] AS <column name>  
FROM  
    (<SELECT query that produces the data>)   
    AS <alias for the source query>  
PIVOT  
(  
    <aggregation function>(<column being aggregated>)  
FOR   
[<column that contains the values that will become column headers>]   
    IN ( [first pivoted column], [second pivoted column],  
    ... [last pivoted column])  
) AS <alias for the pivot table>  
<optional ORDER BY clause>;
*/

--Job id wise total salary
SELECT JOB_ID, SUM(SALARY) AS TOTAL_SALARY
FROM EMPLOYEES
where job_id in ('AD_VP', 'FI_ACCOUNT' , 'PU_CLERK')
GROUP BY JOB_ID;


SELECT * 
FROM 
  (
  SELECT 'JOB ID WISE TOTAL SALARY' HEADER, JOB_ID, SALARY FROM EMPLOYEES
  )
PIVOT
  (
    SUM(SALARY) FOR JOB_ID IN ('AD_VP', 'FI_ACCOUNT', 'PU_CLERK')
  );


--department and Job id wise total salary
SELECT DEPARTMENT_ID, JOB_ID, SUM(SALARY) AS TOTAL_SALARY
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
and job_id in ('AD_VP', 'FI_ACCOUNT' , 'PU_CLERK')
GROUP BY JOB_ID, DEPARTMENT_ID
ORDER BY DEPARTMENT_ID;


SELECT * 
FROM 
  (
  SELECT 'department and Job id wise total salary' HEADER, DEPARTMENT_ID, JOB_ID, SALARY FROM EMPLOYEES
  WHERE DEPARTMENT_ID IS NOT NULL
  and job_id in ('AD_VP', 'FI_ACCOUNT' , 'PU_CLERK')
  )
PIVOT
  (
    SUM(SALARY) FOR JOB_ID IN ('AD_VP', 'FI_ACCOUNT', 'PU_CLERK')
  )
  ORDER BY DEPARTMENT_ID;

--Location wise number of department
SELECT LOCATION_ID, COUNT(*)
FROM DEPARTMENTS
GROUP BY LOCATION_ID;



select * from (
  SELECT 'location wise number of department' description, LOCATION_ID
  FROM DEPARTMENTS t
)
PIVOT 
( 
  COUNT(*) FOR LOCATION_ID IN (1700,1400,2400,1500,1800,2500,2700) 
);



/************************** 8. Pivoting rows to columns with Join **************************/

SELECT LISTAGG(CITY)
FROM
  ( SELECT DISTINCT ''''
    ||L.CITY
    ||''',' AS CITY
  FROM DEPARTMENTS D,
    LOCATIONS l
  WHERE D.LOCATION_ID = L.LOCATION_ID
  );

/************************** 8. UNPIVOT **************************/

SELECT * 
FROM (
  SELECT 'location wise number of department' description, 
  L.CITY
  FROM  DEPARTMENTS D, 
        LOCATIONS l
  WHERE D.LOCATION_ID = L.LOCATION_ID
)
PIVOT (
  COUNT(*) FOR CITY IN ('Seattle' AS Seattle,'Toronto' AS Toronto,'London' AS London, 'Southlake' AS Southlake,
                        'South San Francisco' AS South_San_Francisco, 'Munich' AS Munich, 'Oxford' AS Oxford)
  );


SELECT *
FROM
  (SELECT EMPLOYEE_ID,
    FIRST_NAME,
    LAST_NAME,
    EMAIL,
    PHONE_NUMBER,
    JOB_ID,
    TO_CHAR(HIRE_DATE, 'DD/MON/YYYY') AS HIRE_DATE,
    TO_CHAR(SALARY)         AS SALARY,
    TO_CHAR(COMMISSION_PCT) AS COMMISSION_PCT,
    TO_CHAR(MANAGER_ID)     AS MANAGER_ID,
    TO_CHAR(DEPARTMENT_ID)  AS DEPARTMENT_ID
  FROM EMPLOYEES
  ) UNPIVOT ( 
      ATTRIBUTE_NAME FOR ATRIBUTE_VALUE IN ("FIRST_NAME","LAST_NAME","EMAIL","PHONE_NUMBER","JOB_ID","HIRE_DATE","SALARY","COMMISSION_PCT","MANAGER_ID","DEPARTMENT_ID") 
      );
      
      