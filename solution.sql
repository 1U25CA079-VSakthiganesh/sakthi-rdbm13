CREATE TABLE Course (
    CourseName VARCHAR(50) PRIMARY KEY,
    FacultyName VARCHAR(50),
    DepartmentName VARCHAR(50)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    CourseName VARCHAR(50),
    FOREIGN KEY (CourseName) REFERENCES Course(CourseName)
);

INSERT INTO Course VALUES
('BCA', 'Kumar', 'Computer Science'),
('BBA', 'Priya', 'Management');

INSERT INTO Student VALUES
(1, 'Arun', 'BCA'),
(2, 'Anu', 'BCA'),
(3, 'Ravi', 'BBA');

SELECT * FROM Student;

SELECT * FROM Course;

SELECT
    Student.StudentID,
    Student.StudentName,
    Student.CourseName,
    Course.FacultyName,
    Course.DepartmentName
FROM Student
JOIN Course
ON Student.CourseName = Course.CourseName;
