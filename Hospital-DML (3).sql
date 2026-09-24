INSERT INTO Department (DepartmentName, HeadDoctorID)
VALUES
    (N'Cardiology', NULL),
    (N'Pediatrics', NULL),
    (N'Orthopedics', NULL),
    (N'Dermatology', NULL),
    (N'Radiology', NULL);

INSERT INTO Doctor (FirstName, LastName, LicenseNumber, Specialization, ProfessionalTitle, IsActive, DepartmentID)
VALUES
    (N'Ahmed', N'Al Balushi', N'OM-DOC-001', N'Cardiology', N'Consultant', 1, 1),
    (N'Sara', N'Al Hinai', N'OM-DOC-002', N'Pediatrics', N'Specialist', 1, 2),
    (N'Khalid', N'Al Rawahi', N'OM-DOC-003', N'Orthopedics', N'Consultant', 1, 3),
    (N'Maryam', N'Al Riyami', N'OM-DOC-004', N'Dermatology', N'Specialist', 1, 4),
    (N'Yousef', N'Al Amri', N'OM-DOC-005', N'Radiology', N'Specialist', 1, 5),
    (N'Noor', N'Al Lawati', N'OM-DOC-006', N'Cardiology', N'Specialist', 1, 1);

UPDATE Department SET HeadDoctorID = 1 WHERE DepartmentID = 1;
UPDATE Department SET HeadDoctorID = 2 WHERE DepartmentID = 2;
UPDATE Department SET HeadDoctorID = 3 WHERE DepartmentID = 3;
UPDATE Department SET HeadDoctorID = 4 WHERE DepartmentID = 4;
UPDATE Department SET HeadDoctorID = 5 WHERE DepartmentID = 5;

INSERT INTO Patient (FirstName, LastName, DOB, BloodGroup, Gender, Email, Street, City, StateName)
VALUES
    (N'Fatma', N'Al Sabahi', '1992-04-18', 'A+', 'Female', N'fatma.sabahi@example.com', N'Al Khuwair Street', N'Muscat', N'Muscat'),
    (N'Ahmed', N'Al Balushi', '1985-09-03', 'O+', 'Male', N'ahmed.balushi@example.com', N'Al Hail North', N'Seeb', N'Muscat'),
    (N'Maha', N'Al Farsi', '2001-01-24', 'B+', 'Female', N'maha.farsi@example.com', N'Al Ghubrah', N'Muscat', N'Muscat'),
    (N'Yousef', N'Al Hinai', '1978-12-09', 'AB+', 'Male', N'yousef.hinai@example.com', N'Al Mawaleh', N'Seeb', N'Muscat'),
    (N'Sara', N'Al Riyami', '1996-06-14', 'A-', 'Female', N'sara.riyami@example.com', N'Al Amerat', N'Muscat', N'Muscat'),
    (N'Omar', N'Al Habsi', '2012-03-30', 'O-', 'Male', N'omar.habsi@example.com', N'Ruwi', N'Muscat', N'Muscat'),
    (N'Noor', N'Al Lawati', '1969-08-21', 'B-', 'Female', N'noor.lawati@example.com', N'Al Khoudh', N'Seeb', N'Muscat'),
    (N'Khalid', N'Al Rawahi', '2004-11-02', 'O+', 'Male', N'khalid.rawahi@example.com', N'Nizwa Centre', N'Nizwa', N'Al Dakhiliyah');

INSERT INTO PatientPhone (PatientID, Phone)
VALUES
    (1, '92130001'),
    (1, '92130002'),
    (2, '92130003'),
    (3, '92130004'),
    (4, '92130005'),
    (5, '92130006'),
    (6, '92130007'),
    (7, '92130008'),
    (8, '92130009'),
    (8, '92130010');

INSERT INTO Service (ServiceName, ServiceType, CurrentPrice, IsActive)
VALUES
    (N'Cardiology Consultation', N'Consultation', 45.00, 1),
    (N'ECG Test', N'Diagnostic Test', 20.00, 1),
    (N'Child Health Consultation', N'Consultation', 35.00, 1),
    (N'Bone X-Ray', N'Imaging', 55.00, 1),
    (N'Skin Examination', N'Consultation', 40.00, 1),
    (N'Blood Test', N'Laboratory Test', 25.00, 1),
    (N'Ultrasound Scan', N'Imaging', 70.00, 1),
    (N'Temporary Demo Service', N'Other', 10.00, 1);

INSERT INTO DepartmentService (DepartmentID, ServiceID)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (3, 4),
    (4, 5),
    (1, 6),
    (2, 6),
    (5, 7),
    (3, 6),
    (4, 6);

INSERT INTO Appointment (PatientID, DoctorID, AppointmentDate, AppointmentTime, AppointmentStatus, AppointmentType)
VALUES
    (1, 1, '2026-10-01', '09:00', 'Completed', N'Consultation'),
    (2, 2, '2026-10-02', '10:30', 'Completed', N'Follow-up'),
    (3, 3, '2026-10-03', '11:00', 'Scheduled', N'Consultation'),
    (4, 4, '2026-10-04', '12:15', 'Completed', N'Consultation'),
    (5, 5, '2026-10-05', '13:30', 'Completed', N'Diagnostic'),
    (6, 6, '2026-10-06', '08:45', 'Scheduled', N'Follow-up'),
    (7, 1, '2026-10-07', '14:00', 'Cancelled', N'Consultation'),
    (8, 2, '2026-10-08', '15:00', 'Scheduled', N'Consultation');

INSERT INTO AppointmentService (AppointmentID, ServiceID, Quantity, UnitPriceApplied, ServiceUsageStatus)
VALUES
    (1, 1, 1, 45.00, 'Completed'),
    (1, 2, 1, 20.00, 'Completed'),
    (2, 3, 1, 35.00, 'Completed'),
    (3, 4, 1, 55.00, 'Planned'),
    (4, 5, 1, 40.00, 'Completed'),
    (5, 7, 1, 70.00, 'Completed'),
    (6, 6, 2, 25.00, 'Planned'),
    (7, 2, 1, 20.00, 'Cancelled');

INSERT INTO MedicalRecord (AppointmentID, PatientID, DoctorID, Diagnosis, Treatment)
VALUES
    (1, 1, 1, N'Mild hypertension', N'Follow a low-sodium diet and monitor blood pressure.'),
    (2, 2, 2, N'Routine pediatric follow-up', N'Continue routine care.'),
    (4, 4, 4, N'Mild skin irritation', N'Use the prescribed topical cream.'),
    (5, 5, 5, N'Imaging completed', N'Review the scan results at the next visit.');

INSERT INTO Bill (AppointmentID, IssueDate, BillStatus)
VALUES
    (1, '2026-10-01', 'Partially Paid'),
    (2, '2026-10-02', 'Paid'),
    (3, '2026-10-03', 'Unpaid'),
    (4, '2026-10-04', 'Paid'),
    (5, '2026-10-05', 'Partially Paid'),
    (6, '2026-10-06', 'Unpaid');

INSERT INTO Payment (BillID, Amount, PaymentMethod, PaidAt, PaymentStatus, ReferenceNo)
VALUES
    (1, 30.00, N'Cash', '2026-10-01T09:30:00', 'Completed', N'H-PAY-001'),
    (1, 15.00, N'Card', '2026-10-01T09:35:00', 'Completed', N'H-PAY-002'),
    (2, 35.00, N'Card', '2026-10-02T11:00:00', 'Completed', N'H-PAY-003'),
    (3, 10.00, N'Cash', '2026-10-03T11:30:00', 'Pending', N'H-PAY-004'),
    (4, 40.00, N'Card', '2026-10-04T12:45:00', 'Completed', N'H-PAY-005'),
    (5, 50.00, N'Cash', '2026-10-05T14:00:00', 'Completed', N'H-PAY-006'),
    (6, 20.00, N'Card', '2026-10-06T09:00:00', 'Pending', N'H-PAY-007');

UPDATE PatientPhone
SET Phone = '92139999'
WHERE PatientID = 1 AND Phone = '92130001';

UPDATE Doctor
SET ProfessionalTitle = N'Senior Consultant'
WHERE DoctorID = 1;

UPDATE Service
SET CurrentPrice = 48.00
WHERE ServiceID = 1;

UPDATE Appointment
SET AppointmentStatus = 'Completed'
WHERE AppointmentID = 3;

UPDATE AppointmentService
SET ServiceUsageStatus = 'Completed'
WHERE AppointmentID = 3 AND ServiceID = 4;

UPDATE Payment
SET PaymentStatus = 'Completed'
WHERE PaymentID = 4;

UPDATE Appointment
SET AppointmentStatus = 'Cancelled'
WHERE AppointmentID = 8;

DELETE FROM Appointment
WHERE AppointmentID = 8;

DELETE FROM Payment
WHERE ReferenceNo = N'H-PAY-007';

DELETE FROM PatientPhone
WHERE PatientID = 8 AND Phone = '92130010';

DELETE FROM Service
WHERE ServiceID = 8;