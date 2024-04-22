CREATE DATABASE college;

USE college;

CREATE TABLE student (
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(50)
);

INSERT INTO student (rollno, name, marks, grade, city) VALUES
	(101, "Anil", 78, "C", "Pune"),
    (102, "Bhumika", 93, "A", "Mumbai"),
    (103, "Chetan", 85, "B", "Mumbai"),
    (104, "Dhruv", 96, "A", "Delhi"),
    (105, "Emauel", 12, "F", "Delhi"),
    (106, "Farah", 82, "B", "Delhi");
    
SELECT * FROM student;

ALTER TABLE student
ADD COLUMN grade VARCHAR(2) AFTER marks;

TRUNCATE TABLE student;

ALTER TABLE student
CHANGE COLUMN name full_name VARCHAR(50);

DELETE FROM student
WHERE marks < 80;

ALTER TABLE student
DROP COLUMN grade;
    
CREATE TABLE dept (
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE teacher (
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept (id)
);

USE college;
DROP TABLE student;

CREATE TABLE student (
	student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student (student_id, name) VALUES
	(101, "Adam"),
    (102,"Bob"),
    (103, "Casey");
    
SELECT * FROM student;

CREATE TABLE course (
	course_id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO course (course_id, course) VALUES
	(102, "English"),
    (105, "Maths"),
    (103, "Science"),
    (107, "Computer Science");
    
SELECT * FROM course;

SELECT *
FROM student AS s
INNER JOIN course AS c
ON s.student_id = c.course_id;


SELECT *
FROM student
LEFT JOIN course
ON student.student_id = course.course_id;

SELECT *
FROM student AS s
RIGHT JOIN course AS c
ON s.student_id = c.course_id;

SELECT *
FROM student AS s
LEFT JOIN course AS c
ON s.student_id = c.course_id
UNION
SELECT *
FROM student AS s
RIGHT JOIN course AS c
ON s.student_id = c.course_id; 

SELECT *
FROM student AS s
LEFT JOIN course AS c
ON s.student_id = c.course_id
WHERE c.course_id IS NULL;

SELECt *
FROM student AS s
RIGHT JOIN course AS c
ON s.student_id = c.course_id
WHERE s.student_id IS NULL;

SELECT *
FROM student AS s
LEFT JOIN course AS c
ON s.student_id = c.course_id
WHERE c.course_id IS NULL
UNION
SELECt *
FROM student AS s
RIGHT JOIN course AS c
ON s.student_id = c.course_id
WHERE s.student_id IS NULL;

