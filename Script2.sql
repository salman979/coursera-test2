CREATE TABLE student (
	student_name VARCHAR(20),
    student_id INT AUTO_INCREMENT NOT NULL UNIQUE,
    stu_major VARCHAR(20), 
    birthday DATE,
    gander VARCHAR(1),
    FOREIGN KEY(stu_major) REFERENCES course(major) ON DELETE SET NULL
);

CREATE TABLE course(
	major VARCHAR(20),
    student_enroll INT DEFAULT 0,
    course_code VARCHAR(6)
); 
DROP TABLE student;

ALTER TABLE course ADD PRIMARY KEY(major);
ALTER TABLE student ADD FOREIGN KEY (major) REFERENCES course(major) ON DELETE SET NULL;
ALTER TABLE student ADD PRIMARY KEY(student_id);

CREATE TABLE grades(
	student_id INT,
    course_code VARCHAR(6),
    major VARCHAR(20),
    grades DECIMAL(3,2),
    PRIMARY KEY (student_id, course_code),
    FOREIGN KEY (student_id) REFERENCES student(student_id) ON DELETE CASCADE,
    FOREIGN KEY (major) REFERENCES course(major) ON DELETE CASCADE
);

DESCRIBE grades;
INSERT INTO course VALUES('CS', 1, 'CS-121');
INSERT INTO student (student_name, stu_major, birthday, gander)VALUES('Salman', 'CS', '2000-07-29', 'M');
SELECT student_name AS NAAM FROM student;

SELECT * FROM person;
describe person;
USE girrafe;
DROP TABLE person;
CREATE TABLE person;
describe person;