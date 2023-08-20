-- MySQL 8.0.33
-- Drop School Database
DROP DATABASE IF EXISTS School;
-- Create School Database
CREATE DATABASE School;
-- Select School Database
USE School;
--
-- Create Users Table
--
CREATE TABLE Users (
  Id INT AUTO_INCREMENT,
  Username VARCHAR(100) NOT NULL UNIQUE,
  Password VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);
--
-- Create Teachers Table
--
CREATE TABLE Teachers (
  Id INT AUTO_INCREMENT,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50),
  Subject VARCHAR(100) NOT NULL,
  UserId INT NOT NULL,
  PRIMARY KEY (id)
);
--
-- Create Students Table
--
CREATE TABLE Students (
  Id INT AUTO_INCREMENT,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50),
  Major VARCHAR(50),
  UserId INT,
  PRIMARY KEY (id)
);
--
-- Create Buildings Table
--
CREATE TABLE Buildings (
  Id INT AUTO_INCREMENT,
  Name VARCHAR(100) NOT NULL UNIQUE,
  PRIMARY KEY (id)
);
--
-- Create Classrooms Table
--
CREATE TABLE Classrooms (
  Id INT AUTO_INCREMENT,
  Name VARCHAR(100) NOT NULL UNIQUE,
  BuildingId INT NOT NULL,
  PRIMARY KEY (id)
);
--
-- Create ClassroomTeachers Table
--
CREATE TABLE ClassroomTeachers (
  TeacherId INT,
  ClassroomId INT,
  PRIMARY KEY (TeacherId, ClassroomId) -- Composite Primary Key
);
--
-- Create ClassroomStudents Table
--
CREATE TABLE ClassroomStudents (
  StudentId INT,
  ClassroomId INT,
  PRIMARY KEY (StudentId, ClassroomId) -- Composite Primary Key
);
--
-- Foreign Key: Teachers.UserId -> Users.Id
--
ALTER TABLE Teachers
ADD FOREIGN KEY (UserId)
REFERENCES Users(Id)
ON DELETE CASCADE;
--
-- Foreign Key: Students.UserId -> Users.Id
--
ALTER TABLE Students
ADD FOREIGN KEY (UserId)
REFERENCES Users(Id)
ON DELETE CASCADE;
--
-- Foreign Key: Classrooms.BuildingId -> Buildings.Id
--
ALTER TABLE Classrooms
ADD FOREIGN KEY (BuildingId)
REFERENCES Buildings(Id)
ON DELETE CASCADE;
--
-- Foreign Key: ClassroomTeachers.TeacherId -> Teachers.Id
--
ALTER TABLE ClassroomTeachers
ADD FOREIGN KEY (TeacherId)
REFERENCES Teachers(Id)
ON DELETE CASCADE;
--
-- Foreign Key: ClassroomTeachers.ClassroomId -> Classrooms.Id
--
ALTER TABLE ClassroomTeachers
ADD FOREIGN KEY (ClassroomId)
REFERENCES Classrooms(Id)
ON DELETE CASCADE;
--
-- Foreign Key: ClassroomStudents.StudentId -> Students.Id
--
ALTER TABLE ClassroomStudents
ADD FOREIGN KEY (StudentId)
REFERENCES Students(Id)
ON DELETE CASCADE;
--
-- Foreign Key: ClassroomStudents.ClassroomId -> Classrooms.Id
--
ALTER TABLE ClassroomStudents
ADD FOREIGN KEY (ClassroomId)
REFERENCES Classrooms(Id)
ON DELETE CASCADE;
