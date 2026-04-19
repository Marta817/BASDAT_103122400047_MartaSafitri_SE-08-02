

CREATE TABLE department (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(100),
    manager_id NUMBER,
    location_id NUMBER
);

CREATE TABLE employee (
    employee_id NUMBER PRIMARY KEY,
    last_name VARCHAR2(100) NOT NULL,
    email VARCHAR2(100),
    salary NUMBER,
    commission_pct NUMBER,
    hire_date DATE NOT NULL,
    department_id NUMBER,
    CONSTRAINT fk_dept FOREIGN KEY (department_id)
    REFERENCES department(department_id)
);

CREATE TABLE supplier (
    supplier_id NUMBER PRIMARY KEY,
    supplier_name VARCHAR2(100),
    contact VARCHAR2(50)
);

CREATE TABLE inventory (
    item_id NUMBER PRIMARY KEY,
    item_name VARCHAR2(100),
    stock NUMBER,
    supplier_id NUMBER,
    CONSTRAINT fk_supplier FOREIGN KEY (supplier_id)
    REFERENCES supplier(supplier_id)
);

ANALYZE TABLE department COMPUTE STATISTICS;
ANALYZE TABLE employee COMPUTE STATISTICS;
ANALYZE TABLE supplier COMPUTE STATISTICS;
ANALYZE TABLE inventory COMPUTE STATISTICS;

INSERT INTO department VALUES (10, 'HR', 101, 1);
INSERT INTO department VALUES (20, 'IT', 102, 2);
INSERT INTO department VALUES (30, 'Finance', 103, 3);
INSERT INTO department VALUES (40, 'Marketing', 104, 4);
INSERT INTO department VALUES (50, 'Sales', 105, 5);
INSERT INTO department VALUES (60, 'Logistic', 106, 6);
INSERT INTO department VALUES (70, 'Production', 107, 7);
INSERT INTO department VALUES (80, 'Support', 108, 8);
INSERT INTO department VALUES (90, 'Admin', 109, 9);
INSERT INTO department VALUES (100, 'R&D', 110, 10);

INSERT INTO employee VALUES (1, 'Andi', 'andi@mail.com', 5000, 0.1, SYSDATE, 80);
INSERT INTO employee VALUES (2, 'Budi', 'budi@mail.com', 6000, 0.2, SYSDATE, 80);
INSERT INTO employee VALUES (3, 'Citra', 'citra@mail.com', 5500, 0.1, SYSDATE, 20);
INSERT INTO employee VALUES (4, 'Dewi', 'dewi@mail.com', 7000, 0.3, SYSDATE, 30);
INSERT INTO employee VALUES (5, 'Eka', 'eka@mail.com', 6500, 0.2, SYSDATE, 40);
INSERT INTO employee VALUES (6, 'Fajar', 'fajar@mail.com', 5000, 0.1, SYSDATE, 50);
INSERT INTO employee VALUES (7, 'Gina', 'gina@mail.com', 7200, 0.3, SYSDATE, 60);
INSERT INTO employee VALUES (8, 'Hadi', 'hadi@mail.com', 4800, 0.1, SYSDATE, 70);
INSERT INTO employee VALUES (9, 'Indah', 'indah@mail.com', 5300, 0.2, SYSDATE, 80);
INSERT INTO employee VALUES (10, 'Joko', 'joko@mail.com', 6100, 0.2, SYSDATE, 90);

INSERT INTO supplier VALUES (1, 'PT Sumber Jaya', '0811111111');
INSERT INTO supplier VALUES (2, 'CV Makmur', '0822222222');
INSERT INTO supplier VALUES (3, 'PT Sejahtera', '0833333333');
INSERT INTO supplier VALUES (4, 'CV Maju', '0844444444');
INSERT INTO supplier VALUES (5, 'PT Sentosa', '0855555555');
INSERT INTO supplier VALUES (6, 'CV Berkah', '0866666666');
INSERT INTO supplier VALUES (7, 'PT Jaya Abadi', '0877777777');
INSERT INTO supplier VALUES (8, 'CV Sukses', '0888888888');
INSERT INTO supplier VALUES (9, 'PT Lestari', '0899999999');
INSERT INTO supplier VALUES (10, 'CV Mandiri', '0800000000');

INSERT INTO inventory VALUES (1, 'Laptop', 10, 1);
INSERT INTO inventory VALUES (2, 'Mouse', 50, 2);
INSERT INTO inventory VALUES (3, 'Keyboard', 30, 3);
INSERT INTO inventory VALUES (4, 'Printer', 5, 4);
INSERT INTO inventory VALUES (5, 'Scanner', 7, 5);
INSERT INTO inventory VALUES (6, 'Monitor', 15, 6);
INSERT INTO inventory VALUES (7, 'Router', 20, 7);
INSERT INTO inventory VALUES (8, 'Switch', 25, 8);
INSERT INTO inventory VALUES (9, 'Harddisk', 40, 9);
INSERT INTO inventory VALUES (10, 'Flashdisk', 100, 10);

ANALYZE TABLE department COMPUTE STATISTICS;
ANALYZE TABLE employee COMPUTE STATISTICS;
ANALYZE TABLE supplier COMPUTE STATISTICS;
ANALYZE TABLE inventory COMPUTE STATISTICS;

CREATE VIEW empvu80 AS
SELECT employee_id AS id_number,
       last_name AS name,
       salary,
       department_id
FROM employee
WHERE department_id = 80;

DESC empvu80;

CREATE INDEX idx_emp_dept
ON employee(department_id);

