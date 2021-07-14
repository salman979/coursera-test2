CREATE TABLE student (
	student_id INT AUTO_INCREMENT,
    student_name VARCHAR(20) NOT NULL, 
    major VARCHAR(20) UNIQUE DEFAULT 'NA',
    PRIMARY KEY(student_id)
);

DESCRIBE student;

ALTER TABLE student ADD COLUMN gpa DECIMAL(3,2);

DROP TABLE student;

ALTER TABLE student DROP COLUMN gpa;
INSERT INTO student (student_name,major)VALUES('Mike', 'SoftwareEngineering');
INSERT INTO student (student_name,major)VALUES('Rizar', 'Chemistry');
INSERT INTO student(student_name,major) VALUES ('Patrick', 'English');
INSERT INTO student (student_name,major)VALUES('Ahmad', 'Biology');
UPDATE student SET major='CS', student_name='Salan' WHERE student_id >1 AND student_id <3;
SELECT * FROM student WHERE major IN ('CS', 'Biology'); 
SELECT student.student_id, student.student_name FROM student;
SELECT * FROM student ORDER BY major, student_name ASC LIMIT 3;
SELECT * FROM student;

DROP TABLE student;
CREATE TABLE student(
	student_id INT AUTO_INCREMENT UNIQUE,
    student_name VARCHAR(20) NOT NULL,
    major VARCHAR(20) DEFAULT 'N/A'
);
ALTER TABLE student ADD PRIMARY KEY(student_id);
DESCRIBE student;
INSERT INTO student (student_name, major) VALUES('Siraj', 'Software');
INSERT INTO student (student_name, major) VALUES('Salman', 'IOT');
INSERT INTO student (student_name, major) VALUES('Tilal HOTTY', 'DEEPLEARNING');
SELECT * FROM student;
INSERT INTO student (student_name) VALUES('Sadeem');
UPDATE student SET major='CS' WHERE student_name='Sadeem' AND student_id=4;
SELECT student.student_name FROM student WHERE student_id >1; 
SELECT * FROM student ORDER BY student_name DESC;