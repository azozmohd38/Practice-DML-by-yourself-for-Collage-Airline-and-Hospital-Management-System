INSERT INTO Airport (AirportCode, AirportName, City, StateName)
VALUES
    ('MCT', N'Muscat International Airport', N'Muscat', N'Muscat'),
    ('SLL', N'Salalah Airport', N'Salalah', N'Dhofar'),
    ('OHS', N'Sohar Airport', N'Sohar', N'Al Batinah North'),
    ('DQM', N'Duqm Airport', N'Duqm', N'Al Wusta'),
    ('KHS', N'Khasab Airport', N'Khasab', N'Musandam'),
    ('DXB', N'Dubai International Airport', N'Dubai', N'Dubai'),
    ('AUH', N'Zayed International Airport', N'Abu Dhabi', N'Abu Dhabi'),
    ('DOH', N'Hamad International Airport', N'Doha', N'Doha'),
    ('BAH', N'Bahrain International Airport', N'Muharraq', N'Muharraq'),
    ('JED', N'King Abdulaziz International Airport', N'Jeddah', N'Makkah');

INSERT INTO AirplaneType (TypeName, Company, MaxSeats)
VALUES
    (N'Boeing 737-800', N'Boeing', 189),
    (N'Boeing 787-9', N'Boeing', 290),
    (N'Airbus A320neo', N'Airbus', 180),
    (N'Airbus A330-300', N'Airbus', 277),
    (N'Airbus A350-900', N'Airbus', 325),
    (N'Boeing 777-300ER', N'Boeing', 354),
    (N'Embraer E190', N'Embraer', 100),
    (N'ATR 72-600', N'ATR', 72),
    (N'Airbus A380-800', N'Airbus', 500),
    (N'Boeing 737 MAX 8', N'Boeing', 178);

INSERT INTO AirportAirplaneType (AirportCode, TypeName)
VALUES
    ('MCT', N'Boeing 787-9'),
    ('MCT', N'Airbus A350-900'),
    ('SLL', N'Boeing 737-800'),
    ('SLL', N'Airbus A320neo'),
    ('OHS', N'Embraer E190'),
    ('DQM', N'ATR 72-600'),
    ('KHS', N'ATR 72-600'),
    ('DXB', N'Airbus A380-800'),
    ('AUH', N'Boeing 777-300ER'),
    ('DOH', N'Airbus A330-300');

INSERT INTO Airplane (TotalSeats, TypeName)
VALUES
    (180, N'Boeing 737-800'),
    (280, N'Boeing 787-9'),
    (180, N'Airbus A320neo'),
    (260, N'Airbus A330-300'),
    (320, N'Airbus A350-900'),
    (350, N'Boeing 777-300ER'),
    (96, N'Embraer E190'),
    (70, N'ATR 72-600'),
    (480, N'Airbus A380-800'),
    (178, N'Boeing 737 MAX 8');

INSERT INTO Seat (AirplaneID, SeatNo)
VALUES
    (1, '1A'), (1, '1B'),
    (2, '2A'), (2, '2B'),
    (3, '3A'), (3, '3B'),
    (4, '4A'), (4, '4B'),
    (5, '5A'), (5, '5B');

INSERT INTO Flight (FlightNo, Airline, Restrictions)
VALUES
    ('WY101', N'Oman Air', N'One cabin bag allowed'),
    ('WY201', N'Oman Air', N'Passport required for international travel'),
    ('EK301', N'Emirates', N'Check-in closes 60 minutes before departure'),
    ('QR401', N'Qatar Airways', N'Ticket changes may require an additional fee'),
    ('GF501', N'Gulf Air', N'Baggage allowance depends on the fare class');

INSERT INTO FlightWeekday (FlightNo, WeekdayName)
VALUES
    ('WY101', 'Monday'), ('WY101', 'Thursday'),
    ('WY201', 'Tuesday'), ('WY201', 'Friday'),
    ('EK301', 'Wednesday'), ('EK301', 'Saturday'),
    ('QR401', 'Monday'), ('QR401', 'Sunday'),
    ('GF501', 'Tuesday'), ('GF501', 'Thursday');

INSERT INTO FlightLeg
    (LegNo, FlightNo, DepartureAirport, ArrivalAirport,
     ScheduledDepTime, ScheduledArrTime)
VALUES
    (1,  'WY101', 'MCT', 'DXB', '08:00', '09:15'),
    (2,  'WY101', 'DXB', 'MCT', '18:00', '19:15'),
    (3,  'WY201', 'MCT', 'SLL', '09:00', '10:40'),
    (4,  'WY201', 'SLL', 'MCT', '16:00', '17:40'),
    (5,  'EK301', 'DXB', 'JED', '07:00', '09:00'),
    (6,  'EK301', 'JED', 'DXB', '20:00', '23:00'),
    (7,  'QR401', 'DOH', 'MCT', '11:00', '13:30'),
    (8,  'QR401', 'MCT', 'DOH', '15:00', '16:30'),
    (9,  'GF501', 'BAH', 'AUH', '10:00', '12:00'),
    (10, 'GF501', 'AUH', 'BAH', '14:00', '15:00');

INSERT INTO LegInstance
    (LegNo, InstanceDate, DepartureTime, ArrivalTime, AvailableSeats, AirplaneID)
VALUES
    (1,  '2026-10-05', '08:05', '09:20', 150, 1),
    (2,  '2026-10-05', '18:10', '19:25', 145, 1),
    (3,  '2026-10-06', '09:05', '10:45', 250, 2),
    (4,  '2026-10-06', '16:05', '17:50', 245, 2),
    (5,  '2026-10-07', '07:10', '09:10', 160, 3),
    (6,  '2026-10-07', '20:05', '23:05', 155, 3),
    (7,  '2026-10-08', '11:10', '13:35', 230, 4),
    (8,  '2026-10-08', '15:10', '16:40', 225, 4),
    (9,  '2026-10-09', '10:05', '12:05', 300, 5),
    (10, '2026-10-09', '14:05', '15:05', 295, 5);

INSERT INTO Customer (CustomerName, Phone)
VALUES
    (N'Ahmed Al Balushi', '92110001'),
    (N'Sara Al Hinai', '92110002'),
    (N'Khalid Al Rawahi', '92110003'),
    (N'Maryam Al Riyami', '92110004'),
    (N'Yousef Al Amri', '92110005'),
    (N'Abdullah Al Habsi', '92110006'),
    (N'Noor Al Lawati', '92110007'),
    (N'Omar Al Farsi', '92110008'),
    (N'Fatma Al Busaidi', '92110009'),
    (N'Salim Al Shukaili', '92110010');

INSERT INTO Reservation
    (LegNo, InstanceDate, AirplaneID, SeatNo, CustomerID)
VALUES
    (1,  '2026-10-05', 1, '1A', 1),
    (2,  '2026-10-05', 1, '1B', 2),
    (3,  '2026-10-06', 2, '2A', 3),
    (4,  '2026-10-06', 2, '2B', 4),
    (5,  '2026-10-07', 3, '3A', 5),
    (6,  '2026-10-07', 3, '3B', 6),
    (7,  '2026-10-08', 4, '4A', 7),
    (8,  '2026-10-08', 4, '4B', 8),
    (9,  '2026-10-09', 5, '5A', 9),
    (10, '2026-10-09', 5, '5B', 10);

INSERT INTO Fare (FlightNo, FareCode, Amount)
VALUES
    ('WY101', 'ECONOMY', 65.00), ('WY101', 'BUSINESS', 180.00),
    ('WY201', 'ECONOMY', 45.00), ('WY201', 'BUSINESS', 130.00),
    ('EK301', 'ECONOMY', 95.00), ('EK301', 'BUSINESS', 260.00),
    ('QR401', 'ECONOMY', 85.00), ('QR401', 'BUSINESS', 240.00),
    ('GF501', 'ECONOMY', 75.00), ('GF501', 'BUSINESS', 210.00);

UPDATE Airport
    SET AirportName = N'Muscat International Airport - Main Terminal'
    WHERE AirportCode = 'MCT';

    UPDATE AirplaneType SET MaxSeats = 190 WHERE TypeName = N'Boeing 737-800';

    UPDATE AirportAirplaneType
    SET TypeName = N'Embraer E190'
    WHERE AirportCode = 'KHS' AND TypeName = N'ATR 72-600';

    UPDATE Airplane SET TotalSeats = 185 WHERE AirplaneID = 1;

    UPDATE Reservation
    SET SeatNo = '1B'
    WHERE LegNo = 1 AND InstanceDate = '2026-10-05' AND SeatNo = '1A';

    UPDATE Seat
    SET SeatNo = '1C'
    WHERE AirplaneID = 1 AND SeatNo = '1A';

    UPDATE Flight
    SET Restrictions = N'One cabin bag and one personal item allowed'
    WHERE FlightNo = 'WY101';

    UPDATE FlightWeekday
    SET WeekdayName = 'Friday'
    WHERE FlightNo = 'WY101' AND WeekdayName = 'Thursday';

    UPDATE FlightLeg
    SET ScheduledDepTime = '08:15', ScheduledArrTime = '09:30'
    WHERE LegNo = 1;

    UPDATE LegInstance
    SET DepartureTime = '08:20', ArrivalTime = '09:35', AvailableSeats = 149
    WHERE LegNo = 1 AND InstanceDate = '2026-10-05';

    UPDATE Customer SET Phone = '99110001' WHERE CustomerID = 1;

    UPDATE Fare
    SET Amount = 70.00
    WHERE FlightNo = 'WY101' AND FareCode = 'ECONOMY';

DELETE FROM Reservation WHERE LegNo IN (9, 10);
    DELETE FROM Fare WHERE FlightNo = 'GF501' AND FareCode = 'ECONOMY';
    DELETE FROM FlightWeekday WHERE FlightNo = 'GF501' AND WeekdayName = 'Tuesday';
    DELETE FROM LegInstance WHERE LegNo IN (9, 10);
    DELETE FROM FlightLeg WHERE LegNo IN (9, 10);
    DELETE FROM Flight WHERE FlightNo = 'GF501';
    DELETE FROM Customer WHERE CustomerID IN (9, 10);
    DELETE FROM Seat WHERE AirplaneID = 5;
    DELETE FROM Airplane WHERE AirplaneID = 5;
    DELETE FROM AirportAirplaneType
    WHERE AirportCode = 'MCT' AND TypeName = N'Airbus A350-900';
    DELETE FROM AirplaneType WHERE TypeName = N'Airbus A350-900';
    DELETE FROM Airport WHERE AirportCode = 'BAH';