ALTER TABLE JOB_HISTORY DROP CONSTRAINT JHIST_EMP_FK;
ALTER TABLE DEPARTMENTS DROP CONSTRAINT DEPT_MGR_FK;
ALTER TABLE EMPLOYEES DROP CONSTRAINT EMP_MANAGER_FK;
ALTER TABLE EMPLOYEES DROP CONSTRAINT EMP_DEPT_FK;
ALTER TABLE EMPLOYEES DROP CONSTRAINT EMP_JOB_FK;
ALTER TABLE EMPLOYEES DROP CONSTRAINT EMP_LAST_NAME_NN;
ALTER TABLE EMPLOYEES DROP CONSTRAINT EMP_EMAIL_NN;
ALTER TABLE EMPLOYEES DROP CONSTRAINT EMP_HIRE_DATE_NN;
ALTER TABLE EMPLOYEES DROP CONSTRAINT EMP_JOB_NN;
ALTER TABLE EMPLOYEES DROP CONSTRAINT EMP_SALARY_MIN;
ALTER TABLE EMPLOYEES DROP CONSTRAINT EMP_EMP_ID_PK;
ALTER TABLE EMPLOYEES DROP COLUMN PREV_DEPARTMENT_ID;

ALTER TABLE DEPARTMENTS DROP CONSTRAINT DEPT_LOC_FK;
ALTER TABLE JOB_HISTORY DROP CONSTRAINT JHIST_JOB_FK;
ALTER TABLE JOB_HISTORY DROP CONSTRAINT JHIST_DEPT_FK;
ALTER TABLE DEPARTMENTS DROP CONSTRAINT DEPT_NAME_NN;
ALTER TABLE JOBS DROP CONSTRAINT JOB_TITLE_NN;
ALTER TABLE JOB_HISTORY DROP CONSTRAINT JHIST_EMPLOYEE_NN;
ALTER TABLE JOB_HISTORY DROP CONSTRAINT JHIST_START_DATE_NN;
ALTER TABLE JOB_HISTORY DROP CONSTRAINT JHIST_END_DATE_NN;
ALTER TABLE JOB_HISTORY DROP CONSTRAINT JHIST_JOB_NN;
ALTER TABLE JOB_HISTORY DROP CONSTRAINT JHIST_DATE_INTERVAL;
ALTER TABLE DEPARTMENTS DROP CONSTRAINT DEPT_ID_PK;
ALTER TABLE JOBS DROP CONSTRAINT JOB_ID_PK;
ALTER TABLE JOB_HISTORY DROP CONSTRAINT JHIST_EMP_ID_ST_DATE_PK;
DROP TABLE EMPLOYEE_BACKUP;
DROP VIEW EMP_DETAILS_VIEW;
ALTER TABLE COUNTRIES DROP CONSTRAINT COUNTR_REG_FK;
ALTER TABLE LOCATIONS DROP CONSTRAINT LOC_C_ID_FK;
ALTER TABLE REGIONS DROP CONSTRAINT REGION_ID_NN;
ALTER TABLE COUNTRIES DROP CONSTRAINT COUNTRY_ID_NN;
ALTER TABLE LOCATIONS DROP CONSTRAINT LOC_CITY_NN;
ALTER TABLE REGIONS DROP CONSTRAINT REG_ID_PK;
--ALTER TABLE COUNTRIES DROP CONSTRAINT COUNTRY_C_ID_PK;
ALTER TABLE LOCATIONS DROP CONSTRAINT LOC_ID_PK;

 DROP INDEX REG_ID_PK;
 DROP INDEX COUNTRY_C_ID_PK;
 DROP INDEX LOC_CITY_IX;
 DROP INDEX LOC_STATE_PROVINCE_IX;
 DROP INDEX LOC_COUNTRY_IX;
 DROP INDEX LOC_ID_PK;
 DROP INDEX DEPT_LOCATION_IX;
 DROP INDEX DEPT_ID_PK;
 DROP INDEX JOB_ID_PK;
 DROP INDEX EMP_EMP_ID_PK;
 DROP INDEX EMP_DEPARTMENT_IX;
 DROP INDEX EMP_JOB_IX;
 DROP INDEX EMP_MANAGER_IX;
 DROP INDEX EMP_NAME_IX;
 DROP INDEX JHIST_EMP_ID_ST_DATE_PK;
 DROP INDEX JHIST_JOB_IX;
 DROP INDEX JHIST_EMPLOYEE_IX;
 DROP INDEX JHIST_DEPARTMENT_IX;

INSERT INTO employees VALUES 
   ( 111
   , 'Ismael'
   , 'Sciarra'
   , 'ISCIARRA'
   , '515.124.4369'
   , TO_DATE('30-SEP-1997', 'dd-MON-yyyy')
   , 'FI_ACCOUNT'
   , 7700
   , NULL
   , 108
   , 100
   );
INSERT INTO employees VALUES 
   ( 112
   , 'Jose Manuel'
   , 'Urman'
   , 'JMURMAN'
   , '515.124.4469'
   , TO_DATE('07-MAR-1998', 'dd-MON-yyyy')
   , 'FI_ACCOUNT'
   , 7800
   , NULL
   , 108
   , 100
   );
INSERT INTO employees VALUES 
   ( 113
   , 'Luis'
   , 'Popp'
   , 'LPOPP'
   , '515.124.4567'
   , TO_DATE('07-DEC-1999', 'dd-MON-yyyy')
   , 'FI_ACCOUNT'
   , 6900
   , NULL
   , 108
   , 100
   );
INSERT INTO employees VALUES 
   ( 114
   , 'Den'
   , 'Raphaely'
   , 'DRAPHEAL'
   , '515.127.4561'
   , TO_DATE('07-DEC-1994', 'dd-MON-yyyy')
   , 'PU_MAN'
   , 11000
   , NULL
   , 100
   , 30
   );
INSERT INTO employees VALUES 
   ( 115
   , 'Alexander'
   , 'Khoo'
   , 'AKHOO'
   , '515.127.4562'
   , TO_DATE('18-MAY-1995', 'dd-MON-yyyy')
   , 'PU_CLERK'
   , 3100
   , NULL
   , 114
   , 30
   );
INSERT INTO employees VALUES 
   ( 116
   , 'Shelli'
   , 'Baida'
   , 'SBAIDA'
   , '515.127.4563'
   , TO_DATE('24-DEC-1997', 'dd-MON-yyyy')
   , 'PU_CLERK'
   , 2900
   , NULL
   , 114
   , 30
   );
INSERT INTO employees VALUES 
   ( 117
   , 'Sigal'
   , 'Tobias'
   , 'STOBIAS'
   , '515.127.4564'
   , TO_DATE('24-JUL-1997', 'dd-MON-yyyy')
   , 'PU_CLERK'
   , 2800
   , NULL
   , 114
   , 30
   );
INSERT INTO employees VALUES 
   ( 118
   , 'Guy'
   , 'Himuro'
   , 'GHIMURO'
   , '515.127.4565'
   , TO_DATE('15-NOV-1998', 'dd-MON-yyyy')
   , 'PU_CLERK'
   , 2600
   , NULL
   , 114
   , 30
   );
INSERT INTO employees VALUES 
   ( 119
   , 'Karen'
   , 'Colmenares'
   , 'KCOLMENA'
   , '515.127.4566'
   , TO_DATE('10-AUG-1999', 'dd-MON-yyyy')
   , 'PU_CLERK'
   , 2500
   , NULL
   , 114
   , 30
   );
INSERT INTO employees VALUES 
   ( 120
   , 'Matthew'
   , 'Weiss'
   , 'MWEISS'
   , '650.123.1234'
   , TO_DATE('18-JUL-1996', 'dd-MON-yyyy')
   , 'ST_MAN'
   , 8000
   , NULL
   , 100
   , 50
   );
INSERT INTO employees VALUES 
   ( 121
   , 'Adam'
   , 'Fripp'
   , 'AFRIPP'
   , '650.123.2234'
   , TO_DATE('10-APR-1997', 'dd-MON-yyyy')
   , 'ST_MAN'
   , 8200
   , NULL
   , 100
   , 50
   );
INSERT INTO employees VALUES 
   ( 122
   , 'Payam'
   , 'Kaufling'
   , 'PKAUFLIN'
   , '650.123.3234'
   , TO_DATE('01-MAY-1995', 'dd-MON-yyyy')
   , 'ST_MAN'
   , 7900
   , NULL
   , 100
   , 50
   );
INSERT INTO employees VALUES 
   ( 123
   , 'Shanta'
   , 'Vollman'
   , 'SVOLLMAN'
   , '650.123.4234'
   , TO_DATE('10-OCT-1997', 'dd-MON-yyyy')
   , 'ST_MAN'
   , 6500
   , NULL
   , 100
   , 50
   );
INSERT INTO employees VALUES 
   ( 124
   , 'Kevin'
   , 'Mourgos'
   , 'KMOURGOS'
   , '650.123.5234'
   , TO_DATE('16-NOV-1999', 'dd-MON-yyyy')
   , 'ST_MAN'
   , 5800
   , NULL
   , 100
   , 50
   );
INSERT INTO employees VALUES 
   ( 125
   , 'Julia'
   , 'Nayer'
   , 'JNAYER'
   , '650.124.1214'
   , TO_DATE('16-JUL-1997', 'dd-MON-yyyy')
   , 'ST_CLERK'
   , 3200
   , NULL
   , 120
   , 50
   );
INSERT INTO employees VALUES 
   ( 126
   , 'Irene'
   , 'Mikkilineni'
   , 'IMIKKILI'
   , '650.124.1224'
   , TO_DATE('28-SEP-1998', 'dd-MON-yyyy')
   , 'ST_CLERK'
   , 2700
   , NULL
   , 120
   , 50
   );
INSERT INTO employees VALUES 
   ( 127
   , 'James'
   , 'Landry'
   , 'JLANDRY'
   , '650.124.1334'
   , TO_DATE('14-JAN-1999', 'dd-MON-yyyy')
   , 'ST_CLERK'
   , 2400
   , NULL
   , 120
   , 50
   );
INSERT INTO employees VALUES 
   ( 128
   , 'Steven'
   , 'Markle'
   , 'SMARKLE'
   , '650.124.1434'
   , TO_DATE('08-MAR-2000', 'dd-MON-yyyy')
   , 'ST_CLERK'
   , 2200
   , NULL
   , 120
   , 50
   );
INSERT INTO employees VALUES 
   ( 129
   , 'Laura'
   , 'Bissot'
   , 'LBISSOT'
   , '650.124.5234'
   , TO_DATE('20-AUG-1997', 'dd-MON-yyyy')
   , 'ST_CLERK'
   , 3300
   , NULL
   , 121
   , 50
   );
INSERT INTO employees VALUES 
   ( 130
   , 'Mozhe'
   , 'Atkinson'
   , 'MATKINSO'
   , '650.124.6234'
   , TO_DATE('30-OCT-1997', 'dd-MON-yyyy')
   , 'ST_CLERK'
   , 2800
   , NULL
   , 121
   , 50
   );
INSERT INTO employees VALUES 
   ( 131
   , 'James'
   , 'Marlow'
   , 'JAMRLOW'
   , '650.124.7234'
   , TO_DATE('16-FEB-1997', 'dd-MON-yyyy')
   , 'ST_CLERK'
   , 2500
   , NULL
   , 121
   , 50
   );
INSERT INTO employees VALUES 
   ( 132
   , 'TJ'
   , 'Olson'
   , 'TJOLSON'
   , '650.124.8234'
   , TO_DATE('10-APR-1999', 'dd-MON-yyyy')
   , 'ST_CLERK'
   , 2100
   , NULL
   , 121
   , 50
   );
INSERT INTO employees VALUES 
   ( 133
   , 'Jason'
   , 'Mallin'
   , 'JMALLIN'
   , '650.127.1934'
   , TO_DATE('14-JUN-1996', 'dd-MON-yyyy')
   , 'ST_CLERK'
   , 3300
   , NULL
   , 122
   , 50
   );
INSERT INTO employees VALUES 
   ( 134
   , 'Michael'
   , 'Rogers'
   , 'MROGERS'
   , '650.127.1834'
   , TO_DATE('26-AUG-1998', 'dd-MON-yyyy')
   , 'ST_CLERK'
   , 2900
   , NULL
   , 122
   , 50
   );
INSERT INTO employees VALUES 
   ( 135
   , 'Ki'
   , 'Gee'
   , 'KGEE'
   , '650.127.1734'
   , TO_DATE('12-DEC-1999', 'dd-MON-yyyy')
   , 'ST_CLERK'
   , 2400
   , NULL
   , 122
   , 50
   );
INSERT INTO employees VALUES 
   ( 136
   , 'Hazel'
   , 'Philtanker'
   , 'HPHILTAN'
   , '650.127.1634'
   , TO_DATE('06-FEB-2000', 'dd-MON-yyyy')
   , 'ST_CLERK'
   , 2200
   , NULL
   , 122
   , 50
   );
INSERT INTO employees VALUES 
   ( 137
   , 'Renske'
   , 'Ladwig'
   , 'RLADWIG'
   , '650.121.1234'
   , TO_DATE('14-JUL-1995', 'dd-MON-yyyy')
   , 'ST_CLERK'
   , 3600
   , NULL
   , 123
   , 50
   );
INSERT INTO employees VALUES 
   ( 138
   , 'Stephen'
   , 'Stiles'
   , 'SSTILES'
   , '650.121.2034'
   , TO_DATE('26-OCT-1997', 'dd-MON-yyyy')
   , 'ST_CLERK'
   , 3200
   , NULL
   , 123
   , 50
   );
INSERT INTO employees VALUES 
   ( 139
   , 'John'
   , 'Seo'
   , 'JSEO'
   , '650.121.2019'
   , TO_DATE('12-FEB-1998', 'dd-MON-yyyy')
   , 'ST_CLERK'
   , 2700
   , NULL
   , 123
   , 50
   );
INSERT INTO employees VALUES 
   ( 140
   , 'Joshua'
   , 'Patel'
   , 'JPATEL'
   , '650.121.1834'
   , TO_DATE('06-APR-1998', 'dd-MON-yyyy')
   , 'ST_CLERK'
   , 2500
   , NULL
   , 123
   , 50
   );
INSERT INTO employees VALUES 
   ( 141
   , 'Trenna'
   , 'Rajs'
   , 'TRAJS'
   , '650.121.8009'
   , TO_DATE('17-OCT-1995', 'dd-MON-yyyy')
   , 'ST_CLERK'
   , 3500
   , NULL
   , 124
   , 50
   );
INSERT INTO employees VALUES 
   ( 142
   , 'Curtis'
   , 'Davies'
   , 'CDAVIES'
   , '650.121.2994'
   , TO_DATE('29-JAN-1997', 'dd-MON-yyyy')
   , 'ST_CLERK'
   , 3100
   , NULL
   , 124
   , 50
   );
INSERT INTO employees VALUES 
   ( 143
   , 'Randall'
   , 'Matos'
   , 'RMATOS'
   , '650.121.2874'
   , TO_DATE('15-MAR-1998', 'dd-MON-yyyy')
   , 'ST_CLERK'
   , 2600
   , NULL
   , 124
   , 50
   );
INSERT INTO employees VALUES 
   ( 144
   , 'Peter'
   , 'Vargas'
   , 'PVARGAS'
   , '650.121.2004'
   , TO_DATE('09-JUL-1998', 'dd-MON-yyyy')
   , 'ST_CLERK'
   , 2500
   , NULL
   , 124
   , 50
   );
INSERT INTO employees VALUES 
   ( 145
   , 'John'
   , 'Russell'
   , 'JRUSSEL'
   , '011.44.1344.429268'
   , TO_DATE('01-OCT-1996', 'dd-MON-yyyy')
   , 'SA_MAN'
   , 14000
   , .4
   , 100
   , 80
   );
INSERT INTO employees VALUES 
   ( 146
   , 'Karen'
   , 'Partners'
   , 'KPARTNER'
   , '011.44.1344.467268'
   , TO_DATE('05-JAN-1997', 'dd-MON-yyyy')
   , 'SA_MAN'
   , 13500
   , .3
   , 100
   , 80
   );
INSERT INTO employees VALUES 
   ( 147
   , 'Alberto'
   , 'Errazuriz'
   , 'AERRAZUR'
   , '011.44.1344.429278'
   , TO_DATE('10-MAR-1997', 'dd-MON-yyyy')
   , 'SA_MAN'
   , 12000
   , .3
   , 100
   , 80
   );
INSERT INTO employees VALUES 
   ( 148
   , 'Gerald'
   , 'Cambrault'
   , 'GCAMBRAU'
   , '011.44.1344.619268'
   , TO_DATE('15-OCT-1999', 'dd-MON-yyyy')
   , 'SA_MAN'
   , 11000
   , .3
   , 100
   , 80
   );
INSERT INTO employees VALUES 
   ( 149
   , 'Eleni'
   , 'Zlotkey'
   , 'EZLOTKEY'
   , '011.44.1344.429018'
   , TO_DATE('29-JAN-2000', 'dd-MON-yyyy')
   , 'SA_MAN'
   , 10500
   , .2
   , 100
   , 80
   );
INSERT INTO employees VALUES 
   ( 150
   , 'Peter'
   , 'Tucker'
   , 'PTUCKER'
   , '011.44.1344.129268'
   , TO_DATE('30-JAN-1997', 'dd-MON-yyyy')
   , 'SA_REP'
   , 10000
   , .3
   , 145
   , 80
   );
INSERT INTO employees VALUES 
   ( 151
   , 'David'
   , 'Bernstein'
   , 'DBERNSTE'
   , '011.44.1344.345268'
   , TO_DATE('24-MAR-1997', 'dd-MON-yyyy')
   , 'SA_REP'
   , 9500
   , .25
   , 145
   , 80
   );
INSERT INTO employees VALUES 
   ( 152
   , 'Peter'
   , 'Hall'
   , 'PHALL'
   , '011.44.1344.478968'
   , TO_DATE('20-AUG-1997', 'dd-MON-yyyy')
   , 'SA_REP'
   , 9000
   , .25
   , 145
   , 80
   );
INSERT INTO employees VALUES 
   ( 153
   , 'Christopher'
   , 'Olsen'
   , 'COLSEN'
   , '011.44.1344.498718'
   , TO_DATE('30-MAR-1998', 'dd-MON-yyyy')
   , 'SA_REP'
   , 8000
   , .2
   , 145
   , 80
   );
INSERT INTO employees VALUES 
   ( 154
   , 'Nanette'
   , 'Cambrault'
   , 'NCAMBRAU'
   , '011.44.1344.987668'
   , TO_DATE('09-DEC-1998', 'dd-MON-yyyy')
   , 'SA_REP'
   , 7500
   , .2
   , 145
   , 80
   );
INSERT INTO employees VALUES 
   ( 155
   , 'Oliver'
   , 'Tuvault'
   , 'OTUVAULT'
   , '011.44.1344.486508'
   , TO_DATE('23-NOV-1999', 'dd-MON-yyyy')
   , 'SA_REP'
   , 7000
   , .15
   , 145
   , 80
   );
INSERT INTO employees VALUES 
   ( 156
   , 'Janette'
   , 'King'
   , 'JKING'
   , '011.44.1345.429268'
   , TO_DATE('30-JAN-1996', 'dd-MON-yyyy')
   , 'SA_REP'
   , 10000
   , .35
   , 146
   , 80
   );
INSERT INTO employees VALUES 
   ( 157
   , 'Patrick'
   , 'Sully'
   , 'PSULLY'
   , '011.44.1345.929268'
   , TO_DATE('04-MAR-1996', 'dd-MON-yyyy')
   , 'SA_REP'
   , 9500
   , .35
   , 146
   , 80
   );
INSERT INTO employees VALUES 
   ( 158
   , 'Allan'
   , 'McEwen'
   , 'AMCEWEN'
   , '011.44.1345.829268'
   , TO_DATE('01-AUG-1996', 'dd-MON-yyyy')
   , 'SA_REP'
   , 9000
   , .35
   , 146
   , 80
   );
INSERT INTO employees VALUES 
   ( 159
   , 'Lindsey'
   , 'Smith'
   , 'LSMITH'
   , '011.44.1345.729268'
   , TO_DATE('10-MAR-1997', 'dd-MON-yyyy')
   , 'SA_REP'
   , 8000
   , .3
   , 146
   , 80
   );
INSERT INTO employees VALUES 
   ( 160
   , 'Louise'
   , 'Doran'
   , 'LDORAN'
   , '011.44.1345.629268'
   , TO_DATE('15-DEC-1997', 'dd-MON-yyyy')
   , 'SA_REP'
   , 7500
   , .3
   , 146
   , 80
   );
INSERT INTO employees VALUES 
   ( 161
   , 'Sarath'
   , 'Sewall'
   , 'SSEWALL'
   , '011.44.1345.529268'
   , TO_DATE('03-NOV-1998', 'dd-MON-yyyy')
   , 'SA_REP'
   , 7000
   , .25
   , 146
   , 80
   );
INSERT INTO employees VALUES 
   ( 162
   , 'Clara'
   , 'Vishney'
   , 'CVISHNEY'
   , '011.44.1346.129268'
   , TO_DATE('11-NOV-1997', 'dd-MON-yyyy')
   , 'SA_REP'
   , 10500
   , .25
   , 147
   , 80
   );
INSERT INTO employees VALUES 
   ( 163
   , 'Danielle'
   , 'Greene'
   , 'DGREENE'
   , '011.44.1346.229268'
   , TO_DATE('19-MAR-1999', 'dd-MON-yyyy')
   , 'SA_REP'
   , 9500
   , .15
   , 147
   , 80
   );
INSERT INTO employees VALUES 
   ( 164
   , 'Mattea'
   , 'Marvins'
   , 'MMARVINS'
   , '011.44.1346.329268'
   , TO_DATE('24-JAN-2000', 'dd-MON-yyyy')
   , 'SA_REP'
   , 7200
   , .10
   , 147
   , 80
   );
INSERT INTO employees VALUES 
   ( 165
   , 'David'
   , 'Lee'
   , 'DLEE'
   , '011.44.1346.529268'
   , TO_DATE('23-FEB-2000', 'dd-MON-yyyy')
   , 'SA_REP'
   , 6800
   , .1
   , 147
   , 80
   );
INSERT INTO employees VALUES 
   ( 166
   , 'Sundar'
   , 'Ande'
   , 'SANDE'
   , '011.44.1346.629268'
   , TO_DATE('24-MAR-2000', 'dd-MON-yyyy')
   , 'SA_REP'
   , 6400
   , .10
   , 147
   , 80
   );
INSERT INTO employees VALUES 
   ( 167
   , 'Amit'
   , 'Banda'
   , 'ABANDA'
   , '011.44.1346.729268'
   , TO_DATE('21-APR-2000', 'dd-MON-yyyy')
   , 'SA_REP'
   , 6200
   , .10
   , 147
   , 80
   );
INSERT INTO employees VALUES 
   ( 168
   , 'Lisa'
   , 'Ozer'
   , 'LOZER'
   , '011.44.1343.929268'
   , TO_DATE('11-MAR-1997', 'dd-MON-yyyy')
   , 'SA_REP'
   , 11500
   , .25
   , 148
   , 80
   );
INSERT INTO employees VALUES 
   ( 169 
   , 'Harrison'
   , 'Bloom'
   , 'HBLOOM'
   , '011.44.1343.829268'
   , TO_DATE('23-MAR-1998', 'dd-MON-yyyy')
   , 'SA_REP'
   , 10000
   , .20
   , 148
   , 80
   );
INSERT INTO employees VALUES 
   ( 170
   , 'Tayler'
   , 'Fox'
   , 'TFOX'
   , '011.44.1343.729268'
   , TO_DATE('24-JAN-1998', 'dd-MON-yyyy')
   , 'SA_REP'
   , 9600
   , .20
   , 148
   , 80
   );
INSERT INTO employees VALUES 
   ( 171
   , 'William'
   , 'Smith'
   , 'WSMITH'
   , '011.44.1343.629268'
   , TO_DATE('23-FEB-1999', 'dd-MON-yyyy')
   , 'SA_REP'
   , 7400
   , .15
   , 148
   , 80
   );
INSERT INTO employees VALUES 
   ( 172
   , 'Elizabeth'
   , 'Bates'
   , 'EBATES'
   , '011.44.1343.529268'
   , TO_DATE('24-MAR-1999', 'dd-MON-yyyy')
   , 'SA_REP'
   , 7300
   , .15
   , 148
   , 80
   );
INSERT INTO employees VALUES 
   ( 173
   , 'Sundita'
   , 'Kumar'
   , 'SKUMAR'
   , '011.44.1343.329268'
   , TO_DATE('21-APR-2000', 'dd-MON-yyyy')
   , 'SA_REP'
   , 6100
   , .10
   , 148
   , 80
   );
INSERT INTO employees VALUES 
   ( 174
   , 'Ellen'
   , 'Abel'
   , 'EABEL'
   , '011.44.1644.429267'
   , TO_DATE('11-MAY-1996', 'dd-MON-yyyy')
   , 'SA_REP'
   , 11000
   , .30
   , 149
   , 80
   );
INSERT INTO employees VALUES 
   ( 175
   , 'Alyssa'
   , 'Hutton'
   , 'AHUTTON'
   , '011.44.1644.429266'
   , TO_DATE('19-MAR-1997', 'dd-MON-yyyy')
   , 'SA_REP'
   , 8800
   , .25
   , 149
   , 80
   );
INSERT INTO employees VALUES 
   ( 176
   , 'Jonathon'
   , 'Taylor'
   , 'JTAYLOR'
   , '011.44.1644.429265'
   , TO_DATE('24-MAR-1998', 'dd-MON-yyyy')
   , 'SA_REP'
   , 8600
   , .20
   , 149
   , 80
   );
INSERT INTO employees VALUES 
   ( 177
   , 'Jack'
   , 'Livingston'
   , 'JLIVINGS'
   , '011.44.1644.429264'
   , TO_DATE('23-APR-1998', 'dd-MON-yyyy')
   , 'SA_REP'
   , 8400
   , .20
   , 149
   , 80
   );
INSERT INTO employees VALUES 
   ( 178
   , 'Kimberely'
   , 'Grant'
   , 'KGRANT'
   , '011.44.1644.429263'
   , TO_DATE('24-MAY-1999', 'dd-MON-yyyy')
   , 'SA_REP'
   , 7000
   , .15
   , 149
   , NULL
   );
INSERT INTO employees VALUES 
   ( 179
   , 'Charles'
   , 'Johnson'
   , 'CJOHNSON'
   , '011.44.1644.429262'
   , TO_DATE('04-JAN-2000', 'dd-MON-yyyy')
   , 'SA_REP'
   , 6200
   , .10
   , 149
   , 80
   );
INSERT INTO employees VALUES 
   ( 180
   , 'Winston'
   , 'Taylor'
   , 'WTAYLOR'
   , '650.507.9876'
   , TO_DATE('24-JAN-1998', 'dd-MON-yyyy')
   , 'SH_CLERK'
   , 3200
   , NULL
   , 120
   , 50
   );
INSERT INTO employees VALUES 
   ( 181
   , 'Jean'
   , 'Fleaur'
   , 'JFLEAUR'
   , '650.507.9877'
   , TO_DATE('23-FEB-1998', 'dd-MON-yyyy')
   , 'SH_CLERK'
   , 3100
   , NULL
   , 120
   , 50
   );
INSERT INTO employees VALUES 
   ( 182
   , 'Martha'
   , 'Sullivan'
   , 'MSULLIVA'
   , '650.507.9878'
   , TO_DATE('21-JUN-1999', 'dd-MON-yyyy')
   , 'SH_CLERK'
   , 2500
   , NULL
   , 120
   , 50
   );
INSERT INTO employees VALUES 
   ( 183
   , 'Girard'
   , 'Geoni'
   , 'GGEONI'
   , '650.507.9879'
   , TO_DATE('03-FEB-2000', 'dd-MON-yyyy')
   , 'SH_CLERK'
   , 2800
   , NULL
   , 120
   , 50
   );
INSERT INTO employees VALUES 
   ( 184
   , 'Nandita'
   , 'Sarchand'
   , 'NSARCHAN'
   , '650.509.1876'
   , TO_DATE('27-JAN-1996', 'dd-MON-yyyy')
   , 'SH_CLERK'
   , 4200
   , NULL
   , 121
   , 50
   );
INSERT INTO employees VALUES 
   ( 185
   , 'Alexis'
   , 'Bull'
   , 'ABULL'
   , '650.509.2876'
   , TO_DATE('20-FEB-1997', 'dd-MON-yyyy')
   , 'SH_CLERK'
   , 4100
   , NULL
   , 121
   , 50
   );
INSERT INTO employees VALUES 
   ( 186
   , 'Julia'
   , 'Dellinger'
   , 'JDELLING'
   , '650.509.3876'
   , TO_DATE('24-JUN-1998', 'dd-MON-yyyy')
   , 'SH_CLERK'
   , 3400
   , NULL
   , 121
   , 50
   );
INSERT INTO employees VALUES 
   ( 187
   , 'Anthony'
   , 'Cabrio'
   , 'ACABRIO'
   , '650.509.4876'
   , TO_DATE('07-FEB-1999', 'dd-MON-yyyy')
   , 'SH_CLERK'
   , 3000
   , NULL
   , 121
   , 50
   );
INSERT INTO employees VALUES 
   ( 188
   , 'Kelly'
   , 'Chung'
   , 'KCHUNG'
   , '650.505.1876'
   , TO_DATE('14-JUN-1997', 'dd-MON-yyyy')
   , 'SH_CLERK'
   , 3800
   , NULL
   , 122
   , 50
   );
INSERT INTO employees VALUES 
   ( 189
   , 'Jennifer'
   , 'Dilly'
   , 'JDILLY'
   , '650.505.2876'
   , TO_DATE('13-AUG-1997', 'dd-MON-yyyy')
   , 'SH_CLERK'
   , 3600
   , NULL
   , 122
   , 50
   );
INSERT INTO employees VALUES 
   ( 190
   , 'Timothy'
   , 'Gates'
   , 'TGATES'
   , '650.505.3876'
   , TO_DATE('11-JUL-1998', 'dd-MON-yyyy')
   , 'SH_CLERK'
   , 2900
   , NULL
   , 122
   , 50
   );
INSERT INTO employees VALUES 
   ( 191
   , 'Randall'
   , 'Perkins'
   , 'RPERKINS'
   , '650.505.4876'
   , TO_DATE('19-DEC-1999', 'dd-MON-yyyy')
   , 'SH_CLERK'
   , 2500
   , NULL
   , 122
   , 50
   );
INSERT INTO employees VALUES 
   ( 192
   , 'Sarah'
   , 'Bell'
   , 'SBELL'
   , '650.501.1876'
   , TO_DATE('04-FEB-1996', 'dd-MON-yyyy')
   , 'SH_CLERK'
   , 4000
   , NULL
   , 123
   , 50
   );
INSERT INTO employees VALUES 
   ( 193
   , 'Britney'
   , 'Everett'
   , 'BEVERETT'
   , '650.501.2876'
   , TO_DATE('03-MAR-1997', 'dd-MON-yyyy')
   , 'SH_CLERK'
   , 3900
   , NULL
   , 123
   , 50
   );
INSERT INTO employees VALUES 
   ( 194
   , 'Samuel'
   , 'McCain'
   , 'SMCCAIN'
   , '650.501.3876'
   , TO_DATE('01-JUL-1998', 'dd-MON-yyyy')
   , 'SH_CLERK'
   , 3200
   , NULL
   , 123
   , 50
   );
INSERT INTO employees VALUES 
   ( 195
   , 'Vance'
   , 'Jones'
   , 'VJONES'
   , '650.501.4876'
   , TO_DATE('17-MAR-1999', 'dd-MON-yyyy')
   , 'SH_CLERK'
   , 2800
   , NULL
   , 123
   , 50
   );
INSERT INTO employees VALUES 
   ( 196
   , 'Alana'
   , 'Walsh'
   , 'AWALSH'
   , '650.507.9811'
   , TO_DATE('24-APR-1998', 'dd-MON-yyyy')
   , 'SH_CLERK'
   , 3100
   , NULL
   , 124
   , 50
   );
INSERT INTO employees VALUES 
   ( 197
   , 'Kevin'
   , 'Feeney'
   , 'KFEENEY'
   , '650.507.9822'
   , TO_DATE('23-MAY-1998', 'dd-MON-yyyy')
   , 'SH_CLERK'
   , 3000
   , NULL
   , 124
   , 50
   );
INSERT INTO employees VALUES 
   ( 198
   , 'Donald'
   , 'OConnell'
   , 'DOCONNEL'
   , '650.507.9833'
   , TO_DATE('21-JUN-1999', 'dd-MON-yyyy')
   , 'SH_CLERK'
   , 2600
   , NULL
   , 124
   , 50
   );