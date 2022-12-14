CREATE DATABASE IF NOT EXISTS School

CREATE TABLE IF NOT EXISTS Class(
	ClassID int PRIMARY KEY,
    ClassName VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Parent (
	ParentID INTEGER Primary KEY AUTOINCREMENT,
    Name VARCHAR(100),
    Address VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Student (
	StudentID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(100),
    ParentID int NOT NULL,
	FOREIGN KEY (ParentID) REFERENCES Parent(ParentID)
);

CREATE TABLE IF NOT EXISTS Teacher(
	TeacherID INTEGER PRIMARY KEY,
    Name VARCHAR(100),
    ClassID int NOT NULL,
    FOREIGN KEY (ClassID) REFERENCES Class(ClassID)
);

CREATE TABLE IF NOT EXISTS TestScores (
	TestID INTEGER Primary KEY AUTOINCREMENT,
    Grade int NOT NULL,
    StudentID int NOT NULL,
    ClassID int NOT NULL,
    TeacherID int NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ClassID) REFERENCES Class(ClassID)
);

INSERT INTO Class(ClassID, ClassName)
VALUES (100, 'Math'),
(101, 'Stats');

INSERT INTO Parent(ParentID, Name, Address)
VALUES (1000, 'Jane Smith', '1 Washington St');

INSERT INTO Student(StudentID, Name, ParentID)
VALUES (2000, 'Alan Smith', 1000);

INSERT INTO Teacher(TeacherID, Name, ClassID)
VALUES(100, 'David Taylor', 100),
(101, 'Ramos Lagos', 101);

INSERT INTO TestScores(TestID, Grade, StudentID, ClassID, TeacherID)
Valeus(1, 86, 2000, 100, 100),
(2, 95, 2000, 101, 101);