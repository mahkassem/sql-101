-- Select School Database
USE School;
-- INSERT Users
INSERT INTO Users (Username, Password)
VALUES ('teacher_1', 'secret'),
  ('teacher_2', '123124'),
  ('student_1', '923rh9'),
  ('student_2', 'J*#Uda'),
  ('student_3', '&$&XDd'),
  ('student_4', '2rr3fr'),
  ('student_5', '32df2f'),
  ('student_6', '323df2');
-- INSERT Teachers
INSERT INTO Teachers (UserId, FirstName, LastName, Subject)
VALUES (1, 'Mohammed', 'Ali', 'Science'),
  (2, 'John', NULL, 'English');
-- INSERT Students
INSERT INTO Students (UserId, FirstName, LastName, Major)
VALUES (3, 'Ahmed', 'Mohammed', 'Computer Science'),
  (4, 'Sobhy', 'Ahmed', 'Computer Science'),
  (5, 'John', 'Smith', 'Arts'),
  (6, 'Mohammed', 'Ali', 'Mathematics'),
  (7, 'Ali', 'Ahmed', 'Computer Science'),
  (8, 'John', 'Ford', 'Arts'),
  (NULL, 'Michel', 'Magdy', 'Mathematics'),
  (NULL, 'Sara', 'Mohammed', 'Arts'),
  (NULL, 'Ayman', 'Ahmed', 'Computer Science'),
  (NULL, 'Magdy', 'Adel', 'Mathematics'),
  (NULL, 'Sara', 'Wagdy', 'Arts');
-- INSERT Buildings
INSERT INTO Buildings (Name)
VALUES ('A'),
  ('B');
-- INSERT Classrooms
INSERT INTO Classrooms (Name, BuildingId)
VALUES ('A1', 1),
  ('A2', 1),
  ('A3', 1),
  ('B1', 2),
  ('B2', 2),
  ('B3', 2);
-- INSERT ClassroomTeachers
INSERT INTO ClassroomTeachers (TeacherId, ClassroomId)
VALUES (1, 1),
  (1, 2),
  (2, 3),
  (2, 4),
  (2, 1),
  (1, 6),
  (1, 5);
-- INSERT ClassroomStudents
INSERT INTO ClassroomStudents (StudentId, ClassroomId)
VALUES (3, 1),
  (4, 1),
  (5, 1),
  (6, 1),
  (7, 1),
  (8, 1),
  (9, 1),
  (10, 1),
  (11, 1),
  (3, 2),
  (4, 2),
  (5, 2),
  (6, 2),
  (7, 2),
  (8, 2),
  (9, 2),
  (10, 2),
  (11, 2),
  (3, 3),
  (4, 3),
  (5, 3),
  (6, 3),
  (7, 3),
  (8, 3),
  (9, 3),
  (10, 3),
  (11, 3),
  (3, 4),
  (4, 4),
  (5, 4),
  (6, 4),
  (7, 4),
  (8, 4),
  (9, 4),
  (10, 4),
  (11, 4),
  (3, 5),
  (4, 5),
  (5, 5),
  (6, 5),
  (7, 5),
  (8, 5),
  (9, 5),
  (10, 5),
  (11, 5),
  (3, 6),
  (4, 6),
  (5, 6),
  (6, 6),
  (7, 6),
  (8, 6),
  (9, 6),
  (10, 6),
  (11, 6);