CREATE DATABASE QuanLyHocVien;
USE QuanLyHocVien;
CREATE TABLE Classes(
    classesID INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    className VARCHAR(50) NOT NULL ,
    classesLanguage VARCHAR(50),
    classDescription VARCHAR(100) NOT NULL
);
CREATE TABLE Address(
    addressID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    address VARCHAR(100) NOT NULL
);
CREATE TABLE Students(
    studentsID INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    studentsFullName VARCHAR(100) NOT NULL ,
    address_ID INT NOT NULL ,
    classes_ID INT NOT NULL ,
    studentsAge INT NOT NULL ,
    studentsPhone VARCHAR(20) UNIQUE ,
    FOREIGN KEY (address_ID) REFERENCES Address(addressID),
    FOREIGN KEY (classes_ID) REFERENCES Classes(classesID)
);
CREATE TABLE Course(
    courseID INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    courseName VARCHAR(50) NOT NULL ,
    courseDescription VARCHAR(100) NOT NULL
);
CREATE TABLE Point(
    pointID INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    course_ID INT NOT NULL ,
    students_ID INT NOT NULL ,
    point FLOAT NOT NULL ,
    FOREIGN KEY (course_ID) REFERENCES Course(courseID),
    FOREIGN KEY (students_ID) REFERENCES Students(studentsID)
);

INSERT INTO Address (addressID, address) VALUES (1,'Tran Duy Hung'),(2,'Trung Kinh'),(3,'Cau Giay'),(4,'Lo Duc'),(5,'Hai Ba Trung');
INSERT INTO Classes (classesID, className, classesLanguage, classDescription) VALUES
(1,'Math','Vietnamese','a lot of good teacher'),
(2,'English','English','a lot of beautiful girls'),
(3,'Physical','Vietnamese','Boring'),
(4,'Chemistry','Vietnamese','very hard for all of everyone'),
(5,'Biology','Vietnamese','interesting');

INSERT INTO Students(studentsID, studentsFullName, address_ID, classes_ID, studentsAge, studentsPhone) VALUES
(1,'Tran Quoc Khanh',1,4,17,08468348),
(2,'Mai Duc Long',2,4,15,03468543),
(3,'Tran Viet Thang',3,5,16,09764583),
(4,'Nguyen Khanh Huong',4,3,17,09457823),
(5,'Nguyen Anh Ngoc',3,2,16,09563741),
(6,'Le Anh Tuan',5,1,15,09238956),
(7,'To Viet Anh',1,2,16,09456643),
(8,'Le Duc Canh',5,4,18,09653284),
(9,'Le Minh Duc',1,5,17,09457825),
(10,'Le Trung Hau',2,3,16,09435638);

INSERT INTO course(courseID, courseName, courseDescription) VALUES
(1,'Basic','khoa hoc co ban'),
(2,'Hard','Khoa hoc nang cao'),
(3,'Extend','Khoa hoc mo rong');

INSERT INTO Point(pointID, course_ID, students_ID, point) VALUES
(1,2,1,95),
(2,1,2,94),
(3,2,3,93),
(4,3,4,92),
(5,1,5,91),
(6,2,6,90),
(7,3,7,89),
(8,1,8,88),
(9,2,9,87),
(10,3,2,95),
(11,1,10,94),
(12,3,4,97),
(13,2,3,92),
(14,1,5,91),
(15,2,6,88);

SELECT * FROM  Students WHERE studentsFullName like 'Nguyen%';
SELECT * FROM  Students WHERE studentsFullName like '%Anh%';
SELECT * FROM  Students WHERE studentsAge BETWEEN 15 and 18;
SELECT * FROM  Students WHERE studentsID = 10;
