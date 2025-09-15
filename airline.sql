CREATE DATABASE airline_system;
USE airline_system;


CREATE TABLE Passenger (
    PassengerID INT PRIMARY KEY,
    Name VARCHAR(100),
    ContactNumber VARCHAR(15),
    Email VARCHAR(100),
    SeatPreference VARCHAR(20)
);

INSERT INTO Passenger (PassengerID, Name, ContactNumber, Email, SeatPreference) VALUES
(101, 'Aarav Sharma', '9876543210', 'aarav@example.com', 'Window'),
(102, 'Priya Mehta', '9123456780', 'priya@example.com', 'Aisle'),
(103, 'Rohan Patel', '9988776655', 'rohan@example.com', 'Window'),
(104, 'Neha Verma', '9765432109', 'neha@example.com', 'Aisle'),
(105, 'Aditya Rao', '9456781230', 'aditya@example.com', 'Window'),
(106, 'Isha Kapoor', '9345678120', 'isha@example.com', 'Middle'),
(107, 'Suresh Gupta', '9234567810', 'suresh@example.com', 'Window'),
(108, 'Meena Joshi', '9123456710', 'meena@example.com', 'Aisle'),
(109, 'Kunal Singh', '9012345670', 'kunal@example.com', 'Window'),
(110, 'Simran Kaur', '8901234567', 'simran@example.com', 'Aisle'),
(111, 'Aman Yadav', '8789012345', 'aman@example.com', 'Window'),
(112, 'Ritika Shah', '8678901234', 'ritika@example.com', 'Middle'),
(113, 'Deepak Chauhan', '8567890123', 'deepak@example.com', 'Aisle'),
(114, 'Swati Nair', '8456789012', 'swati@example.com', 'Window'),
(115, 'Arjun Pillai', '8345678901', 'arjun@example.com', 'Window'),
(116, 'Kavya Menon', '8234567890', 'kavya@example.com', 'Aisle'),
(117, 'Varun Mishra', '8123456789', 'varun@example.com', 'Middle'),
(118, 'Ananya Reddy', '8012345678', 'ananya@example.com', 'Window'),
(119, 'Vikram Desai', '7890123456', 'vikram@example.com', 'Window'),
(120, 'Pooja Bansal', '7789012345', 'pooja@example.com', 'Aisle');


CREATE TABLE Flight (
    FlightID INT PRIMARY KEY,
    FlightNumber VARCHAR(10),
    Origin VARCHAR(50),
    Destination VARCHAR(50),
    ScheduledDeparture TIME,
    ScheduledArrival TIME
);

INSERT INTO Flight (FlightID, FlightNumber, Origin, Destination, ScheduledDeparture, ScheduledArrival) VALUES
(201, 'AI101', 'Delhi', 'Mumbai', '10:00:00', '12:00:00'),
(202, 'AI102', 'Mumbai', 'Delhi', '14:00:00', '16:00:00'),
(203, 'AI103', 'Delhi', 'Bangalore', '09:00:00', '11:30:00'),
(204, 'AI104', 'Bangalore', 'Delhi', '17:00:00', '19:30:00'),
(205, 'AI105', 'Delhi', 'Kolkata', '07:00:00', '09:15:00'),
(206, 'AI106', 'Kolkata', 'Delhi', '13:00:00', '15:15:00'),
(207, 'AI107', 'Mumbai', 'Chennai', '08:00:00', '10:15:00'),
(208, 'AI108', 'Chennai', 'Mumbai', '12:00:00', '14:15:00'),
(209, 'AI109', 'Delhi', 'Hyderabad', '06:30:00', '08:45:00'),
(210, 'AI110', 'Hyderabad', 'Delhi', '20:00:00', '22:15:00'),
(211, 'AI111', 'Delhi', 'Pune', '05:30:00', '07:30:00'),
(212, 'AI112', 'Pune', 'Delhi', '18:00:00', '20:00:00'),
(213, 'AI113', 'Mumbai', 'Goa', '15:00:00', '16:30:00'),
(214, 'AI114', 'Goa', 'Mumbai', '17:30:00', '19:00:00'),
(215, 'AI115', 'Delhi', 'Jaipur', '11:00:00', '12:00:00'),
(216, 'AI116', 'Jaipur', 'Delhi', '21:00:00', '22:00:00'),
(217, 'AI117', 'Delhi', 'Lucknow', '08:00:00', '09:15:00'),
(218, 'AI118', 'Lucknow', 'Delhi', '10:30:00', '11:45:00'),
(219, 'AI119', 'Mumbai', 'Ahmedabad', '16:00:00', '17:30:00'),
(220, 'AI120', 'Ahmedabad', 'Mumbai', '18:30:00', '20:00:00');


CREATE TABLE Aircraft (
    AircraftID INT PRIMARY KEY,
    RegistrationNumber VARCHAR(20),
    Model VARCHAR(50),
    SeatingCapacity INT
);

INSERT INTO Aircraft (AircraftID, RegistrationNumber, Model, SeatingCapacity) VALUES
(301, 'VT-ABC', 'Airbus A320', 180),
(302, 'VT-XYZ', 'Boeing 737', 200),
(303, 'VT-PQR', 'Airbus A321', 220),
(304, 'VT-LMN', 'Boeing 787', 300),
(305, 'VT-DEF', 'ATR 72', 70),
(306, 'VT-GHI', 'Airbus A350', 350),
(307, 'VT-JKL', 'Bombardier Q400', 80),
(308, 'VT-MNO', 'Boeing 777', 330),
(309, 'VT-STU', 'Airbus A319', 150),
(310, 'VT-VWX', 'Boeing 747', 410),
(311, 'VT-A11', 'Airbus A320neo', 190),
(312, 'VT-A12', 'Boeing 737 MAX', 210),
(313, 'VT-A13', 'Airbus A330', 290),
(314, 'VT-A14', 'Boeing 757', 230),
(315, 'VT-A15', 'Airbus A310', 280),
(316, 'VT-A16', 'Embraer E190', 100),
(317, 'VT-A17', 'Airbus A220', 130),
(318, 'VT-A18', 'Boeing 727', 240),
(319, 'VT-A19', 'Airbus A380', 500),
(320, 'VT-A20', 'Boeing 717', 150);



CREATE TABLE FlightInstance (
    InstanceID INT PRIMARY KEY,
    FlightID INT,
    Date DATE,
    AircraftID INT,
    FOREIGN KEY (FlightID) REFERENCES Flight(FlightID),
    FOREIGN KEY (AircraftID) REFERENCES Aircraft(AircraftID)
);

INSERT INTO FlightInstance (InstanceID, FlightID, Date, AircraftID) VALUES
(401, 201, '2025-09-01', 301),
(402, 201, '2025-09-02', 302),
(403, 202, '2025-09-01', 303),
(404, 202, '2025-09-02', 304),
(405, 203, '2025-09-01', 305),
(406, 203, '2025-09-02', 306),
(407, 204, '2025-09-01', 307),
(408, 204, '2025-09-02', 308),
(409, 205, '2025-09-01', 309),
(410, 205, '2025-09-02', 310),
(411, 206, '2025-09-01', 311),
(412, 206, '2025-09-02', 312),
(413, 207, '2025-09-01', 313),
(414, 207, '2025-09-02', 314),
(415, 208, '2025-09-01', 315),
(416, 208, '2025-09-02', 316),
(417, 209, '2025-09-01', 317),
(418, 209, '2025-09-02', 318),
(419, 210, '2025-09-01', 319),
(420, 210, '2025-09-02', 320);


CREATE TABLE Crew (
    CrewID INT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(30),
    ContactNumber VARCHAR(15)
);

INSERT INTO Crew (CrewID, Name, Role, ContactNumber) VALUES
(501, 'Ravi Kumar', 'Pilot', '9811111111'),
(502, 'Sanjay Singh', 'Co-Pilot', '9822222222'),
(503, 'Anita Sharma', 'Cabin Crew', '9833333333'),
(504, 'Meera Joshi', 'Cabin Crew', '9844444444'),
(505, 'Amit Verma', 'Pilot', '9855555555'),
(506, 'Sunil Nair', 'Co-Pilot', '9866666666'),
(507, 'Pooja Menon', 'Cabin Crew', '9877777777'),
(508, 'Rajesh Gupta', 'Cabin Crew', '9888888888'),
(509, 'Deepa Reddy', 'Pilot', '9899999999'),
(510, 'Kiran Rao', 'Co-Pilot', '9900000000'),
(511, 'Simran Kaur', 'Cabin Crew', '9812121212'),
(512, 'Vivek Mishra', 'Cabin Crew', '9823232323'),
(513, 'Manoj Pillai', 'Pilot', '9834343434'),
(514, 'Arjun Desai', 'Co-Pilot', '9845454545'),
(515, 'Swati Bansal', 'Cabin Crew', '9856565656'),
(516, 'Rohit Patil', 'Cabin Crew', '9867676767'),
(517, 'Alok Yadav', 'Pilot', '9878787878'),
(518, 'Seema Kapoor', 'Co-Pilot', '9889898989'),
(519, 'Nisha Chauhan', 'Cabin Crew', '9890909090'),
(520, 'Farhan Khan', 'Cabin Crew', '9901010101');



CREATE TABLE FlightCrew (
    FlightCrewID INT PRIMARY KEY,
    InstanceID INT,
    CrewID INT,
    AssignedRole VARCHAR(30),
    FOREIGN KEY (InstanceID) REFERENCES FlightInstance(InstanceID),
    FOREIGN KEY (CrewID) REFERENCES Crew(CrewID)
);

INSERT INTO FlightCrew (FlightCrewID, InstanceID, CrewID, AssignedRole) VALUES
(601, 401, 501, 'Pilot'),
(602, 401, 502, 'Co-Pilot'),
(603, 401, 503, 'Cabin Crew'),
(604, 401, 504, 'Cabin Crew'),
(605, 402, 505, 'Pilot'),
(606, 402, 506, 'Co-Pilot'),
(607, 402, 507, 'Cabin Crew'),
(608, 402, 508, 'Cabin Crew'),
(609, 403, 509, 'Pilot'),
(610, 403, 510, 'Co-Pilot'),
(611, 403, 511, 'Cabin Crew'),
(612, 403, 512, 'Cabin Crew'),
(613, 404, 513, 'Pilot'),
(614, 404, 514, 'Co-Pilot'),
(615, 404, 515, 'Cabin Crew'),
(616, 404, 516, 'Cabin Crew'),
(617, 405, 517, 'Pilot'),
(618, 405, 518, 'Co-Pilot'),
(619, 405, 519, 'Cabin Crew'),
(620, 405, 520, 'Cabin Crew');



CREATE TABLE Booking (
    BookingID INT PRIMARY KEY,
    PassengerID INT,
    InstanceID INT,
    BookingDate DATETIME,
    ReservationStatus VARCHAR(20),
    PaymentStatus VARCHAR(20),
    SeatNumber VARCHAR(5),
    FOREIGN KEY (PassengerID) REFERENCES Passenger(PassengerID),
    FOREIGN KEY (InstanceID) REFERENCES FlightInstance(InstanceID)
);

INSERT INTO Booking (BookingID, PassengerID, InstanceID, BookingDate, ReservationStatus, PaymentStatus, SeatNumber) VALUES
(701, 101, 401, '2025-08-20 10:00:00', 'Confirmed', 'Paid', '12A'),
(702, 102, 402, '2025-08-20 11:00:00', 'Confirmed', 'Paid', '14C'),
(703, 103, 403, '2025-08-21 09:00:00', 'Pending', 'Unpaid', '10B'),
(704, 104, 404, '2025-08-21 10:30:00', 'Confirmed', 'Paid', '15D'),
(705, 105, 405, '2025-08-22 14:00:00', 'Confirmed', 'Paid', '11F'),
(706, 106, 406, '2025-08-22 15:00:00', 'Cancelled', 'Refunded', '13E'),
(707, 107, 407, '2025-08-23 12:30:00', 'Confirmed', 'Paid', '9A'),
(708, 108, 408, '2025-08-23 13:45:00', 'Pending', 'Unpaid', '18C'),
(709, 109, 409, '2025-08-24 08:00:00', 'Confirmed', 'Paid', '20B'),
(710, 110, 410, '2025-08-24 09:15:00', 'Confirmed', 'Paid', '7F'),
(711, 111, 411, '2025-08-25 07:30:00', 'Cancelled', 'Refunded', '6A'),
(712, 112, 412, '2025-08-25 08:30:00', 'Confirmed', 'Paid', '5D'),
(713, 113, 413, '2025-08-26 16:00:00', 'Confirmed', 'Paid', '3C'),
(714, 114, 414, '2025-08-26 17:15:00', 'Pending', 'Unpaid', '4E'),
(715, 115, 415, '2025-08-27 18:00:00', 'Confirmed', 'Paid', '2B'),
(716, 116, 416, '2025-08-27 19:10:00', 'Confirmed', 'Paid', '1A'),
(717, 117, 417, '2025-08-28 06:00:00', 'Cancelled', 'Refunded', '8C'),
(718, 118, 418, '2025-08-28 07:10:00', 'Confirmed', 'Paid', '22D'),
(719, 119, 419, '2025-08-29 20:00:00', 'Confirmed', 'Paid', '19B'),
(720, 120, 420, '2025-08-29 21:30:00', 'Pending', 'Unpaid', '16A');



CREATE TABLE Itinerary (
    ItineraryID INT PRIMARY KEY,
    PassengerID INT,
    BookingID INT,
    SequenceNumber INT,
    FOREIGN KEY (PassengerID) REFERENCES Passenger(PassengerID),
    FOREIGN KEY (BookingID) REFERENCES Booking(BookingID)
);

INSERT INTO Itinerary (ItineraryID, PassengerID, BookingID, SequenceNumber) VALUES
(801, 101, 701, 1),
(802, 102, 702, 1),
(803, 103, 703, 1),
(804, 104, 704, 1),
(805, 105, 705, 1),
(806, 106, 706, 1),
(807, 107, 707, 1),
(808, 108, 708, 1),
(809, 109, 709, 1),
(810, 110, 710, 1),
(811, 111, 711, 1),
(812, 112, 712, 1),
(813, 113, 713, 1),
(814, 114, 714, 1),
(815, 115, 715, 1),
(816, 116, 716, 1),
(817, 117, 717, 1),
(818, 118, 718, 1),
(819, 119, 719, 1),
(820, 120, 720, 1);



CREATE TABLE Fare (
    FareID INT PRIMARY KEY,
    InstanceID INT,
    SeatClass VARCHAR(20),
    Price DECIMAL(10,2),
    FOREIGN KEY (InstanceID) REFERENCES FlightInstance(InstanceID)
);

INSERT INTO Fare (FareID, InstanceID, SeatClass, Price) VALUES
(901, 401, 'Economy', 4500.00),
(902, 401, 'Business', 12000.00),
(903, 402, 'Economy', 4600.00),
(904, 402, 'Business', 12500.00),
(905, 403, 'Economy', 5000.00),
(906, 403, 'Business', 13000.00),
(907, 404, 'Economy', 4800.00),
(908, 404, 'Business', 12800.00),
(909, 405, 'Economy', 4200.00),
(910, 405, 'Business', 11000.00),
(911, 406, 'Economy', 4400.00),
(912, 406, 'Business', 11800.00),
(913, 407, 'Economy', 5300.00),
(914, 407, 'Business', 14000.00),
(915, 408, 'Economy', 5100.00),
(916, 408, 'Business', 13800.00),
(917, 409, 'Economy', 3900.00),
(918, 409, 'Business', 10000.00),
(919, 410, 'Economy', 4100.00),
(920, 410, 'Business', 10500.00);




ALTER TABLE Booking
ADD AmountPaid DECIMAL(10,2);

UPDATE Booking SET AmountPaid = 4500.00   WHERE BookingID = 701;
UPDATE Booking SET AmountPaid = 4500.00   WHERE BookingID = 702;
UPDATE Booking SET AmountPaid = 5000.00   WHERE BookingID = 703;
UPDATE Booking SET AmountPaid = 12000.00  WHERE BookingID = 704;
UPDATE Booking SET AmountPaid = 4500.00   WHERE BookingID = 705;
UPDATE Booking SET AmountPaid = 0.00      WHERE BookingID = 706;
UPDATE Booking SET AmountPaid = 4500.00   WHERE BookingID = 707;
UPDATE Booking SET AmountPaid = 4600.00   WHERE BookingID = 708;
UPDATE Booking SET AmountPaid = 5000.00   WHERE BookingID = 709;
UPDATE Booking SET AmountPaid = 4800.00   WHERE BookingID = 710;
UPDATE Booking SET AmountPaid = 0.00      WHERE BookingID = 711;
UPDATE Booking SET AmountPaid = 4600.00   WHERE BookingID = 712;
UPDATE Booking SET AmountPaid = 12500.00  WHERE BookingID = 713;
UPDATE Booking SET AmountPaid = 12800.00  WHERE BookingID = 714;
UPDATE Booking SET AmountPaid = 4500.00   WHERE BookingID = 715;
UPDATE Booking SET AmountPaid = 12000.00  WHERE BookingID = 716;
UPDATE Booking SET AmountPaid = 0.00      WHERE BookingID = 717;
UPDATE Booking SET AmountPaid = 4600.00   WHERE BookingID = 718;
UPDATE Booking SET AmountPaid = 12800.00  WHERE BookingID = 719;
UPDATE Booking SET AmountPaid = 5000.00   WHERE BookingID = 720;

