INSERT INTO Department (DepartmentName)
VALUES
    (N'Computer Science'),
    (N'Business Administration'),
    (N'Engineering'),
    (N'Information Systems');

INSERT INTO Hostel (HostelName, NumberOfSeats)
VALUES
    (N'Al Khuwair Hostel', 120),
    (N'Bawshar Hostel', 90),
    (N'Seeb Hostel', 150),
    (N'Nizwa Hostel', 80);

INSERT INTO Course (CourseName, DurationMonths, DepartmentID)
VALUES
    (N'Database Systems', 4, 1),
    (N'Programming Fundamentals', 5, 1),
    (N'Business Management', 4, 2),
    (N'Civil Engineering', 6, 3),
    (N'Information Systems Analysis', 4, 4);

INSERT INTO Faculty (FacultyName, MobileNumber, Salary, DepartmentID)
VALUES
    (N'Ahmed Al Balushi', '92110001', 1450.00, 1),
    (N'Sara Al Hinai', '92110002', 1520.00, 1),
    (N'Khalid Al Rawahi', '92110003', 1600.00, 2),
    (N'Maryam Al Riyami', '92110004', 1710.00, 3),
    (N'Yousef Al Amri', '92110005', 1550.00, 4);

INSERT INTO Student (FirstName, LastName, DOB, PhoneNumber, DepartmentID, HostelID)
VALUES
    (N'Aisha', N'Al Farsi', '2004-03-12', '99120001', 1, 1),
    (N'Omar', N'Al Habsi', '2003-07-21', '99120002', 1, 1),
    (N'Maha', N'Al Lawati', '2004-11-05', '99120003', 2, 2),
    (N'Salim', N'Al Shukaili', '2002-01-18', '99120004', 3, 3),
    (N'Noor', N'Al Busaidi', '2003-09-30', '99120005', 4, 4),
    (N'Hamad', N'Al Amri', '2004-06-14', '99120006', 1, 2);

INSERT INTO Subject (SubjectName, CourseID)
VALUES
    (N'SQL Basics', 1),
    (N'Database Design', 1),
    (N'Introduction to Programming', 2),
    (N'Management Principles', 3),
    (N'Structural Design', 4),
    (N'Systems Analysis', 5);

INSERT INTO StudentCourse (StudentID, CourseID, EnrollmentDate)
VALUES
    (1, 1, '2026-09-01'),
    (1, 2, '2026-09-01'),
    (2, 1, '2026-09-01'),
    (2, 2, '2026-09-01'),
    (3, 3, '2026-09-02'),
    (4, 4, '2026-09-02'),
    (5, 5, '2026-09-03'),
    (6, 1, '2026-09-03');

INSERT INTO FacultySubject (FacultyID, SubjectID)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (3, 4),
    (4, 5),
    (5, 6);

INSERT INTO StudentSubject (StudentID, SubjectID)
VALUES
    (1, 1),
    (1, 2),
    (2, 1),
    (2, 3),
    (3, 4),
    (4, 5),
    (5, 6),
    (6, 1);

INSERT INTO Exam (SubjectID, ExamDate, ExamTime, Room)
VALUES
    (1, '2026-11-10', '09:00', N'B101'),
    (2, '2026-11-11', '10:00', N'B102'),
    (3, '2026-11-12', '11:00', N'C201'),
    (4, '2026-11-13', '09:30', N'D105'),
    (5, '2026-11-14', '13:00', N'E204'),
    (6, '2026-11-15', '14:00', N'F301');

UPDATE Department
SET DepartmentName = N'Computing and Information Technology'
WHERE DepartmentID = 1;

UPDATE Faculty
SET Salary = 1500.00
WHERE FacultyID = 1;

UPDATE Student
SET PhoneNumber = '99129999'
WHERE StudentID = 2;

UPDATE Course
SET DurationMonths = 5
WHERE CourseID = 1;

UPDATE StudentCourse
SET EnrollmentDate = '2026-09-05'
WHERE StudentID = 1 AND CourseID = 1;

DELETE FROM StudentCourse
WHERE StudentID = 6 AND CourseID = 1;

DELETE FROM StudentSubject
WHERE StudentID = 6 AND SubjectID = 1;

DELETE FROM Student
WHERE StudentID = 6;
