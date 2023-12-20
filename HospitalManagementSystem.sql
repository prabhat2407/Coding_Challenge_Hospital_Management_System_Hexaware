create database hospital;
use hospital;
CREATE TABLE Doctor (
    doctor_Id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    specialization VARCHAR(50) NOT NULL,
    contactNumber VARCHAR(15) NOT NULL
);

CREATE TABLE Patient (
    patient_Id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    dateOfBirth DATE NOT NULL,
    gender VARCHAR(10) NOT NULL,
    contactNumber VARCHAR(15) NOT NULL,
    address VARCHAR(255) NOT NULL
);

CREATE TABLE Appointments (
    appointmentId INT AUTO_INCREMENT PRIMARY KEY,
    patient_Id INT NOT NULL,
    doctor_Id INT NOT NULL,
    appointment_date DATE NOT NULL,
    description VARCHAR(255),
    FOREIGN KEY (patient_Id) REFERENCES Patient(patient_Id),
    FOREIGN KEY (doctor_Id) REFERENCES Doctor(doctor_Id)
);

INSERT INTO Doctor (firstName, lastName, specialization, contactNumber)
VALUES ('Tony', 'Stark', 'Cardiologist', '123-456-7890'),
('Bruce', 'Banner', 'Dermatologist', '987-654-3210');

INSERT INTO Patient (firstName, lastName, dateOfBirth, gender, contactNumber, address)
VALUES ('Pepper', 'Pots', '1972-09-27', 'Female', '555-1234', '123 Main St'),
('T', 'Challa', '1976-11-29', 'Male', '555-5678', '456 Oak Ave');


SELECT * FROM Appointments;

