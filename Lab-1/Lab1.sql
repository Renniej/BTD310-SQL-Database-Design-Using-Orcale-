
--q1--
describe EMPLOYEES;

--q2--
select EMPLOYEE_ID, LAST_NAME from EMPLOYEES
where SALARY > 3000 and MANAGER_ID = 124;


--q3--
select distinct REGION_ID from COUNTRIES;


--q4---
select COUNTRY_ID ||', '|| COUNTRY_NAME || ', '|| REGION_ID as COUNTRIES from COUNTRIES
order by COUNTRY_ID DESC, REGION_ID ASC; 

--q5--
select STREET_ADDRESS as "Street Address" from LOCATIONS
where STREET_ADDRESS like 'M%';


--q6--
accept id NUMBER prompt 'ENTER ID: ';
select LAST_NAME, FIRST_NAME from EMPLOYEES
where DEPARTMENT_ID = &id;


--q7--
accept INPUT_COLUMN prompt 'ENTER COLOUMN NAME: ';
select FIRST_NAME, &INPUT_COLUMN, &INPUT_COLOUMN + 10 from EMPLOYEES
order by &INPUT_COLUMN;

--q8--
define LAST = 'Taylor'
select PHONE_NUMBER from EMPLOYEES
where LAST_NAME = '&LAST';
undefine LAST;