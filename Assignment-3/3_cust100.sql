DROP TABLE cust_100;
CREATE TABLE cust_100 (
	emp_id INT PRIMARY KEY,
    first_name VARCHAR(15) CONSTRAINT check_first_name CHECK (SUBSTR(first_name, 1, 1) BETWEEN 'A' AND 'Z'),
    last_name VARCHAR(15) NOT NULL CONSTRAINT check_last_name CHECK (SUBSTR(last_name, 1, 1) BETWEEN 'A' AND 'Z'),
    e_mail VARCHAR(25) CONSTRAINT check_email CHECK (e_mail = UPPER(e_mail)),
    ph_no VARCHAR(15),
    hire_date DATE CONSTRAINT check_hire_date CHECK (hire_date > '1980-01-01'),
    job_id VARCHAR(15) CONSTRAINT check_job_id CHECK(job_id LIKE 'FI%' OR job_id LIKE 'AD%' OR job_id LIKE 'IT%'),
    salary INT CONSTRAINT check_salary CHECK(salary >= 4000 AND salary <= 25000),
    mgr_id INT
);
DESC cust_100;

INSERT INTO cust_100 VALUES (101, 'Sunil', 'Khatri', 'SUNIL@101', '9833678842', '1997-04-03', 'IT_PROG',
	12000, 101);
INSERT INTO cust_100 VALUES (102, 'Sneha', 'Biswas', 'SNEHA@102', '9836055543', '1997-07-02', 'IT_PROG',
	12000, 102);
INSERT INTO cust_100 VALUES (103, 'Pouswali', 'Nath', 'POUSWALI@103', '6296554234', '1998-04-05', 'FI_ADV',
	9000, 103);
INSERT INTO cust_100 VALUES (104, 'Rounak', 'Banerjee', 'ROUNAK@104', '6293700043', '2001-11-04', 'IT_PROG',
	12000, 101);
INSERT INTO cust_100 VALUES (105, 'Sayan', 'Banerjee', 'SAYAN@105', '9833877942', '2003-01-03', 'AD_MNGR',
	18000, 104);
SELECT * FROM cust_100;

ALTER TABLE cust_100
	DROP COLUMN mgr_id;
SELECT * FROM cust_100;