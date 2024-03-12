/*
문제 1.
- EMPLOYEES 테이블과, DEPARTMENTS 테이블은 DEPARTMENT_ID로 연결되어 있습니다.
- EMPLOYEES, DEPARTMENTS 테이블을 엘리어스를 이용해서 각각 
  INNER , LEFT OUTER, RIGHT OUTER, FULL OUTER 조인 하세요. (달라지는 행의 개수 주석으로 작성)
*/
SELECT *
FROM employees e
JOIN departments d
ON e.department_id = d.department_id; -- 106개

SELECT *
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id; -- 107개

SELECT *
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id; -- 122개

SELECT *
FROM employees e
FULL JOIN departments d
ON e.department_id = d.department_id; -- 123개

/*
문제 2.
- EMPLOYEES, DEPARTMENTS 테이블을 INNER JOIN하세요
조건)employee_id가 200인 사람의 이름, department_name를 출력하세요
조건)이름 컬럼은 first_name과 last_name을 합쳐서 출력합니다
*/
SELECT
    e.first_name || ' ' || e.last_name AS name,
    d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
WHERE e.employee_id = 200;

/*
문제 3.
- EMPLOYEES, JOBS테이블을 INNER JOIN하세요
조건) 모든 사원의 이름과 직무아이디, 직무 타이틀을 출력하고, 이름 기준으로 오름차순 정렬
HINT) 어떤 컬럼으로 서로 연결되어 있는지 확인
*/
SELECT
    e.first_name, e.job_id, 
    j.job_title
FROM employees e
JOIN jobs j
ON e.job_id = j.job_id
ORDER BY e.first_name;

/*
문제 4.
- JOBS테이블과 JOB_HISTORY테이블을 LEFT_OUTER JOIN 하세요.
*/
SELECT *
FROM jobs j
LEFT JOIN job_history jh
ON j.job_id = jh.job_id;

/*
문제 5.
- Steven King의 부서명을 출력하세요.
*/
SELECT
    e.first_name || ' ' || e.last_name AS full_name,
    d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id
WHERE e.first_name = 'Steven'
AND e.last_name = 'King';

/*
문제 6.
- EMPLOYEES 테이블과 DEPARTMENTS 테이블을 Cartesian Product(Cross join)처리하세요
*/
SELECT * FROM employees
CROSS JOIN departments;

SELECT * FROM employees, departments;