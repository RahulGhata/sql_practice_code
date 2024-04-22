-- Question One Answeer

CREATE DATABASE xyz;
DROP TABLE movie;

USE xyz;

CREATE TABLE employee (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    salary INT NOT NULL
);

INSERT INTO employee(name, salary) VALUES
	("Adam", 25000),
	("Bob", 30000),
    ("Casey", 40000);
    
SELECT * FROM employee;

-- Question Two Answeer
USE xyz;

CREATE TABLE movie (
	id INT PRIMARY KEY AUTO_INCREMENT,
    movie_name VARCHAR(50) UNIQUE,
    price INT DEFAULT 150,
    rating FLOAT CHECK(rating > 3)
);

INSERT INTO movie(movie_name, rating) VALUES
	("Friday the 13", 4.5),
    ("Saw", 4.9);
INSERT INTO movie(movie_name, rating) VALUES
    ("Nun", 4.0),
    ("Conjuring", 4.9),
    ("Haunted", 4.1);
    
SELECT * FROM movie;

ALTER TABLE movie AUTO_INCREMENT = 1;
    
-- Question Three Answer
INSERT INTO student (rollno, name, marks, grade, city) VALUES
	(101, "Anil", 78, "C", "Pune"),
    (102, "Bhumika", 93, "A", "Mumbai"),
    (103, "Chetan", 85, "B", "Mumbai"),
    (104, "Dhruv", 96, "A", "Delhi"),
    (105, "Emanuel", 12, "F", "Delhi"),
    (106, "Farah", 82, "B", "Delhi");



    

