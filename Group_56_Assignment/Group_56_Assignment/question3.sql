-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Group56Schema
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Group56Schema
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Group56Schema` DEFAULT CHARACTER SET utf8 ;
USE `Group56Schema` ;

-- -----------------------------------------------------
-- Table `Group56Schema`.`Shifts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Group56Schema`.`Shifts` (
  `Shift_ID` INT NOT NULL,
  `Start_time` DATETIME NOT NULL,
  `End_time` DATETIME NOT NULL,
  PRIMARY KEY (`Shift_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Group56Schema`.`Employee_id`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Group56Schema`.`Employee_id` (
  `Employee_ID` INT NOT NULL,
  PRIMARY KEY (`Employee_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Group56Schema`.`Doctor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Group56Schema`.`Doctor` (
  `Doctor_ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Salary` INT NOT NULL,
  `Specialization` VARCHAR(45) NOT NULL,
  `Shift_ID` INT NOT NULL,
  `Employee_ID` INT NOT NULL,
  PRIMARY KEY (`Doctor_ID`),
  INDEX `fk_Doctor_Shifts1_idx` (`Shift_ID` ASC) VISIBLE,
  INDEX `fk_Doctor_Employee_id1_idx` (`Employee_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Doctor_Shifts1`
    FOREIGN KEY (`Shift_ID`)
    REFERENCES `Group56Schema`.`Shifts` (`Shift_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Doctor_Employee_id1`
    FOREIGN KEY (`Employee_ID`)
    REFERENCES `Group56Schema`.`Employee_id` (`Employee_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Group56Schema`.`Nurse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Group56Schema`.`Nurse` (
  `Nurse_ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Shift` VARCHAR(45) NOT NULL,
  `Salary` INT NOT NULL,
  `Shift_ID` INT NOT NULL,
  `Employee_ID` INT NOT NULL,
  PRIMARY KEY (`Nurse_ID`),
  INDEX `fk_Nurse_Shifts1_idx` (`Shift_ID` ASC) VISIBLE,
  INDEX `fk_Nurse_Employee_id1_idx` (`Employee_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Nurse_Shifts1`
    FOREIGN KEY (`Shift_ID`)
    REFERENCES `Group56Schema`.`Shifts` (`Shift_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Nurse_Employee_id1`
    FOREIGN KEY (`Employee_ID`)
    REFERENCES `Group56Schema`.`Employee_id` (`Employee_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Group56Schema`.`Office Secretary`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Group56Schema`.`Office Secretary` (
  `Office Secretary_ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Shift` VARCHAR(45) NOT NULL,
  `Salary` INT NOT NULL,
  `Shift_ID` INT NOT NULL,
  `Employee_ID` INT NOT NULL,
  PRIMARY KEY (`Office Secretary_ID`),
  INDEX `fk_Office Secretary_Shifts1_idx` (`Shift_ID` ASC) VISIBLE,
  INDEX `fk_Office Secretary_Employee_id1_idx` (`Employee_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Office Secretary_Shifts1`
    FOREIGN KEY (`Shift_ID`)
    REFERENCES `Group56Schema`.`Shifts` (`Shift_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Office Secretary_Employee_id1`
    FOREIGN KEY (`Employee_ID`)
    REFERENCES `Group56Schema`.`Employee_id` (`Employee_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Group56Schema`.`Administrative assistant`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Group56Schema`.`Administrative assistant` (
  `Administrative assistant_ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Salary` INT NOT NULL,
  `Shift` VARCHAR(45) NOT NULL,
  `Shift_ID` INT NOT NULL,
  `Employee_ID` INT NOT NULL,
  PRIMARY KEY (`Administrative assistant_ID`),
  INDEX `fk_Administrative assistant_Shifts1_idx` (`Shift_ID` ASC) VISIBLE,
  INDEX `fk_Administrative assistant_Employee_id1_idx` (`Employee_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Administrative assistant_Shifts1`
    FOREIGN KEY (`Shift_ID`)
    REFERENCES `Group56Schema`.`Shifts` (`Shift_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Administrative assistant_Employee_id1`
    FOREIGN KEY (`Employee_ID`)
    REFERENCES `Group56Schema`.`Employee_id` (`Employee_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Group56Schema`.`Manager`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Group56Schema`.`Manager` (
  `Manager_ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Salary` INT NOT NULL,
  `Shift_ID` INT NOT NULL,
  PRIMARY KEY (`Manager_ID`),
  INDEX `fk_Manager_Shifts1_idx` (`Shift_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Manager_Shifts1`
    FOREIGN KEY (`Shift_ID`)
    REFERENCES `Group56Schema`.`Shifts` (`Shift_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Group56Schema`.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Group56Schema`.`table1` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Group56Schema`.`Patients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Group56Schema`.`Patients` (
  `Patient_ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `Status` VARCHAR(45) NOT NULL,
  `Health related information` VARCHAR(45) NOT NULL,
  `Contact number` VARCHAR(45) NULL,
  `Permanent_Doctor_ID` INT NULL,
  PRIMARY KEY (`Patient_ID`),
  INDEX `fk_Patient_Doctor1_idx` (`Permanent_Doctor_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Patient_Doctor1`
    FOREIGN KEY (`Permanent_Doctor_ID`)
    REFERENCES `Group56Schema`.`Doctor` (`Doctor_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Group56Schema`.`Appointments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Group56Schema`.`Appointments` (
  `Appointment_ID` INT NOT NULL,
  `Doctor_ID` INT NOT NULL,
  `Patient_ID` INT NOT NULL,
  `Date` DATETIME NOT NULL,
  `Time` DATETIME NOT NULL,
  `Status` VARCHAR(45) NOT NULL,
  `Is_Follow_up` VARCHAR(45) NULL,
  PRIMARY KEY (`Appointment_ID`),
  INDEX `fk_Appointments_Doctor1_idx` (`Doctor_ID` ASC) VISIBLE,
  INDEX `fk_Appointments_Patient1_idx` (`Patient_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Appointments_Doctor1`
    FOREIGN KEY (`Doctor_ID`)
    REFERENCES `Group56Schema`.`Doctor` (`Doctor_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Appointments_Patient1`
    FOREIGN KEY (`Patient_ID`)
    REFERENCES `Group56Schema`.`Patients` (`Patient_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Group56Schema`.`Diagnostic tests`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Group56Schema`.`Diagnostic tests` (
  `Test_ID` INT NOT NULL,
  `Doctor_ID` INT NOT NULL,
  `Patient_ID` INT NOT NULL,
  `Test name` VARCHAR(45) NOT NULL,
  `Test result` VARCHAR(45) NULL,
  PRIMARY KEY (`Test_ID`),
  INDEX `fk_Diagnostic tests_Doctor1_idx` (`Doctor_ID` ASC) VISIBLE,
  INDEX `fk_Diagnostic tests_Patients1_idx` (`Patient_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Diagnostic tests_Doctor1`
    FOREIGN KEY (`Doctor_ID`)
    REFERENCES `Group56Schema`.`Doctor` (`Doctor_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Diagnostic tests_Patients1`
    FOREIGN KEY (`Patient_ID`)
    REFERENCES `Group56Schema`.`Patients` (`Patient_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Group56Schema`.`Prescriptions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Group56Schema`.`Prescriptions` (
  `Prescription_ID` INT NOT NULL,
  `Patient_ID` INT NOT NULL,
  `Doctor_Doctor_ID` INT NOT NULL,
  `Medication_title` VARCHAR(45) NOT NULL,
  `Dosage` INT NOT NULL,
  `Usage` VARCHAR(45) NOT NULL,
  `Start date` DATETIME NOT NULL,
  `End date` DATETIME NULL,
  PRIMARY KEY (`Prescription_ID`),
  INDEX `fk_Prescriptions_Patients1_idx` (`Patient_ID` ASC) VISIBLE,
  INDEX `fk_Prescriptions_Doctor1_idx` (`Doctor_Doctor_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Prescriptions_Patients1`
    FOREIGN KEY (`Patient_ID`)
    REFERENCES `Group56Schema`.`Patients` (`Patient_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Prescriptions_Doctor1`
    FOREIGN KEY (`Doctor_Doctor_ID`)
    REFERENCES `Group56Schema`.`Doctor` (`Doctor_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Group56Schema`.`Patients' records`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Group56Schema`.`Patients' records` (
  `Patient_record_ID` INT NOT NULL,
  `Patient_ID` INT NOT NULL,
  `Nurse_ID` INT NOT NULL,
  `Doctor_ID` INT NOT NULL,
  `Diagnostic_Test_ID` INT NULL,
  `Prescriptions_Prescription_ID` INT NULL,
  `Nurse's_treatment` VARCHAR(45) NULL,
  `Visit Date` DATETIME NOT NULL,
  `Symptomps` VARCHAR(45) NOT NULL,
  `Refferal` VARCHAR(45) NULL,
  PRIMARY KEY (`Patient_record_ID`),
  INDEX `fk_Walk-in patients_has_Nurse_Nurse1_idx` (`Nurse_ID` ASC) VISIBLE,
  INDEX `fk_Patients records_Patient1_idx` (`Patient_ID` ASC) VISIBLE,
  INDEX `fk_Patients records_Doctor1_idx` (`Doctor_ID` ASC) VISIBLE,
  INDEX `fk_Patients' records_Diagnostic tests1_idx` (`Diagnostic_Test_ID` ASC) VISIBLE,
  INDEX `fk_Patients' records_Prescriptions1_idx` (`Prescriptions_Prescription_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Walk-in patients_has_Nurse_Nurse1`
    FOREIGN KEY (`Nurse_ID`)
    REFERENCES `Group56Schema`.`Nurse` (`Nurse_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Patients records_Patient1`
    FOREIGN KEY (`Patient_ID`)
    REFERENCES `Group56Schema`.`Patients` (`Patient_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Patients records_Doctor1`
    FOREIGN KEY (`Doctor_ID`)
    REFERENCES `Group56Schema`.`Doctor` (`Doctor_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Patients' records_Diagnostic tests1`
    FOREIGN KEY (`Diagnostic_Test_ID`)
    REFERENCES `Group56Schema`.`Diagnostic tests` (`Test_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Patients' records_Prescriptions1`
    FOREIGN KEY (`Prescriptions_Prescription_ID`)
    REFERENCES `Group56Schema`.`Prescriptions` (`Prescription_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Group56Schema`.`Charges`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Group56Schema`.`Charges` (
  `Charge_ID` INT NOT NULL,
  `Patient_ID` INT NOT NULL,
  `Date` DATETIME NOT NULL,
  `Details` VARCHAR(45) NOT NULL,
  `Amount` INT NOT NULL,
  PRIMARY KEY (`Charge_ID`),
  INDEX `fk_Charges_Patients1_idx` (`Patient_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Charges_Patients1`
    FOREIGN KEY (`Patient_ID`)
    REFERENCES `Group56Schema`.`Patients` (`Patient_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Group56Schema`.`Hours and Rates`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Group56Schema`.`Hours and Rates` (
  `Hours_Rates_ID` INT NOT NULL,
  `Employee_ID` INT NOT NULL,
  `Shift_ID` INT NOT NULL,
  `Manager_ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Role` VARCHAR(45) NOT NULL,
  `Hourly rate` INT NOT NULL,
  `Hours worked` INT NOT NULL,
  PRIMARY KEY (`Hours_Rates_ID`),
  INDEX `fk_Hours and Rates_Employee_id1_idx` (`Employee_ID` ASC) VISIBLE,
  INDEX `fk_Hours and Rates_Shifts1_idx` (`Shift_ID` ASC) VISIBLE,
  INDEX `fk_Hours and Rates_Manager1_idx` (`Manager_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Hours and Rates_Employee_id1`
    FOREIGN KEY (`Employee_ID`)
    REFERENCES `Group56Schema`.`Employee_id` (`Employee_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hours and Rates_Shifts1`
    FOREIGN KEY (`Shift_ID`)
    REFERENCES `Group56Schema`.`Shifts` (`Shift_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hours and Rates_Manager1`
    FOREIGN KEY (`Manager_ID`)
    REFERENCES `Group56Schema`.`Manager` (`Manager_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- Insert records into Diagnostic_Tests table
INSERT INTO `Group56Schema`.`Diagnostic_Tests` (`Test_ID`, `Doctor_ID`, `Patient_ID`, `Test_name`, `Test_result`) VALUES
(1, 101, 001, 'Blood Test', 'Normal'),
(2, 102, 002, 'X-Ray', 'Abnormal'),
(3, 103, 003, 'Ultrasound', 'Normal'),
(4, 104, 004, 'MRI', 'Abnormal'),
(5, 105, 005, 'ECG', 'Normal'),
(6, 106, 006, 'CT Scan', 'Normal'),
(7, 107, 007, 'Biopsy', 'Abnormal'),
(8, 108, 008, 'Stool Test', 'Normal'),
(9, 109, 009, 'Urine Test', 'Abnormal'),
(10, 110, 010, 'Endoscopy', 'Normal');
-- Insert records into Patients_records table
INSERT INTO `Group56Schema`.`Patients_records` (`Patient_record_ID`, `Patient_ID`, `Nurse_ID`, `Doctor_ID`, `Diagnostic_Test_ID`, `Prescriptions_prescription_ID`, `Nurse_treatment`, `Visit_date`, `Symptoms`, `Referral`) 
VALUES
(1, 002, 202, 101, 1, 2, 'Tylenol', '2024-03-01', 'Cold', 'Dr. Smith'),
(2, 003, 204, 102, 2, 3, 'Cough syrup', '2024-03-13', 'Cough', 'Dr. Johnson'),
(3, 001, 210, 103, 3, 1, 'Aspirin', '2024-03-03', 'Headache', 'Dr. Williams'),
(4, 004, 206, 104, 4, 4, 'Multivitamins', '2024-03-04', 'Sore throat', 'Dr. Chris'),
(5, 008, 209, 105, 5, 8, 'Gestid', '2024-03-05', 'Ulcer', 'Dr. Vy'),
(6, 010, 207, 106, 6, 10, 'Phenergan', '2024-03-06', 'Dizziness', 'Dr. Tu'),
(7, 007, 203, 107, 7, 7, 'Cisplatin', '2024-03-010', 'Cancer', 'Dr. Leo'),
(8, 009, 208, 108, 8, 9, 'Panadol', '2024-01-08', 'Back pain', 'Dr. Libareo'),
(9, 006, 201, 109, 9, 6, 'Ibuprofen', '2024-01-09', 'Joint pain', 'Dr. Kamel'),
(10, 005, 205, 110, 10, 5, 'Amoxicillin', '2024-03-07', 'Shortness of breath', 'Dr. Joaquin');

-- Insert records into Prescriptions table
INSERT INTO `Group56Schema`.`Prescriptions` (`Prescription_ID`, `Patient_ID`, `Doctor_Doctor_ID`, `Medication_title`, `Dosage`, `Prescription_usage`, `Start_date`, `End_date`) VALUES
(1, 001, 103, 'Aspirin', 100, 'Once daily', '2024-03-17', '2024-03-24'),
(2, 002, 101, 'Tylenol', 250, 'Twice daily', '2024-03-16', '2024-03-23'),
(3, 003, 102, 'Cough syrup', 50, 'Thrice daily', '2024-03-15', '2024-03-22'),
(4, 004, 104, 'Multivitamins', 100, 'Four times a day', '2024-03-04', '2024-03-13'),
(5, 005, 110, 'Amoxicillin', 150, 'Twice times a day', '2024-03-05', '2024-03-14'),
(6, 006, 109, 'Ibuprofen', 100, 'Twice times a day', '2024-03-06', '2024-03-15'),
(7, 007, 107, 'Cisplatin', 50, 'Once times a day', '2024-03-07', '2024-03-16'),
(8, 008, 105, 'Gestid', 80, 'Twice times a day', '2024-03-08', '2024-03-17'),
(9, 009, 108, 'Panadol', 200, 'Thrice times a day', '2024-03-09', '2024-03-18'),
(10, 010, 106, 'Promethazine (Phenergan)', 10, 'Twice times a day', '2024-03-10', '2024-03-19');


-- Insert records into Patients table
INSERT INTO `Group56Schema`.`Patients` (`Patient_ID`, `Name`, `Address`, `status`, `Health_related_information`, `Contact_number`, `Permanent_Doctor_ID`) VALUES
(001, 'John Doe', '123 Main St, Toronto', 'Permanent', 'None', '123-456-7890', 1),
(002, 'Jane Smith', '456 Elm St, Toronto', 'Walk-in', 'None', '234-567-8901', NULL),
(003, 'Michael Johnson', '789 Oak St, Toronto', 'Permanent', 'None', '345-678-9012', 3),
(004, 'Emily Brown', '321 Maple St, Toronto', 'Permanent', 'None', '456-789-0123', 4),
(005, 'David Lee', '654 Pine St, Toronto', 'Permanent', 'None', '567-890-1234', NULL),
(006, 'Sarah Miller', '987 Cedar St, Toronto', 'Permanent', 'None', '678-901-2345', 6),
(007, 'Michael Clark', '234 Birch St, Toronto', 'Permanent', 'None', '789-012-3456', NULL),
(008, 'Jessica Garcia', '567 Willow St, Toronto', 'Permanent', 'None', '890-123-4567', 8),
(009, 'Chris Taylor', '890 Cherry St, Toronto', 'Permanent', 'None', '901-234-5678', NULL),
(010, 'Jennifer Martinez', '123 Pineapple St, Toronto', 'Permanent', 'None', '012-345-6789', NULL);

-- Insert records into Doctor table
INSERT INTO `Group56Schema`.`Doctor` (`Doctor_ID`, `Doctor_Name`, `Salary`, `Specialization`, `shift_ID`, `Employee_Id`) VALUES
(1, 'Dr. Smith', 100000, 'General Practitioner', 1, 101),
(2, 'Dr. Johnson', 120000, 'Cardiologist', 2, 102),
(3, 'Dr. Williams', 110000, 'Pediatrician', 3, 103),
(4, 'Dr. Chris', 95000, 'Orthopedic Surgeon', 4, 104),
(5, 'Dr. Vy', 105000, 'Gynecologist', 5, 105),
(6, 'Dr. Tu', 98000, 'Psychiatrist', 6, 106),
(7, 'Dr. Leo', 100000, 'Oncologist', 7, 107),
(8, 'Dr. Libareo', 110000, 'X-ray Specialist', 8, 108),
(9, 'Dr. Kamel', 115000, 'Orthopedic surgeons', 9, 109),
(10, 'Dr. Joaquin', 100000, 'Pulmonologists', 10, 110);

-- Insert records into Nurse table
INSERT INTO `Group56Schema`.`Nurse` (`Nurse_ID`, `Nurse_Name`, `Shift`, `Salary`, `Shift_ID`, `Employee_ID`) VALUES
(1, 'Nurse Laily', 'Evening', 60000, 9, 201),
(2, 'Nurse Wilson', 'Morning', 58000, 1, 202),
(3, 'Nurse Martinez', 'Morning', 56000, 7, 203),
(4, 'Nurse Natalia', 'Afternoon', 54000, 2, 204),
(5, 'Nurse Michelle', 'Morning', 52000, 10, 205),
(6, 'Nurse Bianca', 'Mid-day', 50000, 4, 206),
(7, 'Nurse Funmi', 'Mid-night', 48000, 6, 207),
(8, 'Nurse Ashley', 'Afternoon', 46000, 8, 208),
(9, 'Nurse Kaima', 'Evening', 44000, 5, 209),
(10, 'Nurse Cheyenne', 'Morning', 42000, 3, 210);

-- Insert records into Appointments table
INSERT INTO `Group56Schema`.`Appointments` (`Appointment_ID`, `Doctor_ID`, `Patient_ID`, `Date`, `Time`, `Status`, `Is_Follow_up`) VALUES
(1, 1, 1, '2024-03-01', '08:00:00', 'Booked', 'No'),
(2, 2, 2, '2024-03-02', '09:00:00', 'Cancelled', 'Yes'),
(3, 3, 3, '2024-03-03', '10:00:00', 'Arrived', 'No'),
(4, 4, 4, '2024-03-04', '11:00:00', 'Booked', 'No'),
(5, 5, 5, '2024-03-05', '12:00:00', 'Arrived', 'No'),
(6, 6, 6, '2024-03-06', '13:00:00', 'Booked', 'No'),
(7, 7, 7, '2024-03-07', '14:00:00', 'Booked', 'No'),
(8, 8, 8, '2024-03-08', '15:00:00', 'Booked', 'No'),
(9, 9, 9, '2024-03-09', '16:00:00', 'Cancelled', 'Yes'),
(10, 10, 10, '2024-03-10', '17:00:00', 'Booked', 'No');

-- Insert records into Charges table
INSERT INTO `Group56Schema`.`Charges` (`Charge_ID`, `Patient_ID`, `Date`, `Details`, `Amount`) VALUES
(1, 1, '2024-03-01', 'Sick note', 20),
(2, 2, '2024-03-02', 'Prescription refill', 10),
(3, 3, '2024-03-03', 'Lab test', 30),
(4, 4, '2024-03-04', 'Medical certificate', 15),
(5, 5, '2024-03-05', 'Consultation fee', 25),
(6, 6, '2024-03-06', 'Injection fee', 5),
(7, 7, '2024-03-07', 'Dressing fee', 10),
(8, 8, '2024-03-08', 'Physiotherapy session', 40),
(9, 9, '2024-03-09', 'Medical report fee', 20),
(10, 10, '2024-03-10', 'Emergency room visit', 50);

-- Insert records into Shifts table
INSERT INTO `Group56Schema`.`Shifts` (`Shift_ID`, `Start_time`, `End_time`) VALUES
(1, '07:00:00', '12:00:00'),
(2, '14:00:00', '20:00:00'),
(3, '09:00:00', '15:00:00'),
(4, '08:00:00', '14:00:00'),
(5, '15:00:00', '22:00:00'),
(6, '22:00:00', '05:00:00'),
(7, '05:00:00', '09:00:00'),
(8, '12:00:00', '19:00:00'),
(9, '19:00:00', '02:00:00'),
(10, '02:00:00', '08:00:00');


-- Insert records into Manager table
INSERT INTO `Group56Schema`.`Manager` (`Manager_ID`, `Manager_Name`, `Salary`, `Shift_ID`) VALUES
(1, 'Manager Smith', 150000, 1),
(2, 'Manager Johnson', 155000, 2),
(3, 'Manager Williams', 140000, 3),
(4, 'Manager Anderson', 130000, 4),
(5, 'Manager Wilson', 125000, 5),
(6, 'Manager Taylor', 120000, 6),
(7, 'Manager Brown', 115000, 7),
(8, 'Manager Martinez', 110000, 8),
(9, 'Manager Lopez', 105000, 9),
(10, 'Manager Hernandez', 100000, 10);

-- Insert records into Administrative_assistant table
INSERT INTO `Group56Schema`.`Administrative_assistant` (`Administrative_assistant_ID`, `Administrative_assistant_Name`, `Salary`, `Shift`, `Shift_ID`, `Employee_ID`) VALUES
(1, 'Assistant Brown', 45000, 'Morning', 1, 301),
(2, 'Assistant Wilson', 47000, 'Afternoon', 2, 302),
(3, 'Assistant Smith', 40000, 'Morning', 3, 303),
(4, 'Assistant Johnson', 38000, 'Mid-day', 4, 304),
(5, 'Assistant Williams', 36000, 'Evening', 5, 305),
(6, 'Assistant Martinez', 32000, 'Mid-night', 6, 306),
(7, 'Assistant Taylor', 30000, 'Morning', 7, 307),
(8, 'Assistant Lee', 28000, 'Afternoon', 8, 308),
(9, 'Assistant Rodriguez', 24000, 'Evening', 9, 309),
(10, 'Assistant Nguyen', 22000, 'Morning', 10, 310);

-- Insert records into Office_Secretary table
INSERT INTO `Group56Schema`.`Office_Secretary` (`Office_Secretary_ID`, `Office_Secretary_Name`, `Shift`, `Salary`, `Shift_ID`, `Employee_ID`) VALUES
(1, 'Secretary Davis', 'Evening', 50000, 9, 401),
(2, 'Secretary Garcia', 'Morning', 52000, 1, 402),
(3, 'Secretary Evans', 'Morning', 37000, 7, 403),
(4, 'Secretary Fisher', 'Afternoon', 35000, 2, 404),
(5, 'Secretary Adams', 'Morning', 45000, 10, 405),
(6, 'Secretary Baker', 'Mid-day', 43000, 4, 406),
(7, 'Secretary Clark', 'Mid-night', 41000, 6, 407),
(8, 'Secretary Harris', 'Afternoon', 31000, 8, 408),
(9, 'Secretary Jackson', 'Evening', 29000, 5, 409),
(10, 'Secretary King', 'Morning', 27000, 3, 410);


-- Insert records into Employee_id table
INSERT INTO `Group56Schema`.`Employee_id` (`Employee_ID`) VALUES
(101), (102), (103), (104), (105), (106), (107), (108), (109), (110),
(201), (202), (203), (204), (205), (206), (207), (208), (209), (210),
(301), (302), (303), (304), (305), (306), (307), (308), (309), (310),
(401), (402), (403), (404), (405), (406), (407), (408),(409), (410);
-- Insert records into Hours_and_Rates table
INSERT INTO `Group56Schema`.`Hours_and_Rates` (`Hours_Rates_ID`, `Employee_ID`, `Shift_ID`, `Manager_ID`, `Employee_Name`, `Employee_Role`, `Hourly_rate`, `Hours_worked`) VALUES
(1, 101, 1, 9, 'Dr. Smith', 'Doctor', 120, 50),
(2, 102, 2, 1, 'Dr. Johnson', 'Doctor', 120, 48),
(3, 103, 3, 7, 'Dr. Williams', 'Doctor', 115, 47),
(4, 104, 4, 2, 'Dr. Chris', 'Doctor', 115, 47),
(5, 105, 5, 10, 'Dr. Vy', 'Doctor', 115, 48),
(6, 106, 6, 4, 'Dr. Tu', 'Doctor', 110, 46),
(7, 107, 7, 6, 'Dr. Leo', 'Doctor', 110, 47),
(8, 108, 8, 8, 'Dr. Libareo', 'Doctor', 110, 47),
(9, 109, 9, 5, 'Dr. Kamel', 'Doctor', 110, 47),
(10, 110, 10, 3, 'Dr. Joaquin', 'Doctor', 105, 67),
(11, 201, 9, 1, 'Nurse Laily', 'Nurse', 80, 38),
(12, 202, 1, 2, 'Nurse Wilson', 'Nurse', 75, 37),
(13, 203, 7, 3, 'Nurse Martinez', 'Nurse', 78, 39),
(14, 204, 2, 4, 'Nurse Natalia', 'Nurse', 72, 39),
(15, 205, 10, 5, 'Nurse Michelle', 'Nurse', 62, 39),
(16, 206, 4, 6, 'Nurse Bianca', 'Nurse', 60, 39),
(17, 207, 6, 7, 'Nurse Funmi', 'Nurse', 67, 39),
(18, 208, 8, 8, 'Nurse Ashley', 'Nurse', 60, 39),
(19, 209, 5, 9, 'Nurse Kaima', 'Nurse', 65, 39),
(20, 210, 3, 10, 'Nurse Cheyenne', 'Nurse', 63, 39),
(21, 301, 1, 9, 'Assistant Brown', 'Administrative Assistant', 45, 40),
(22, 302, 2, 1, 'Assistant Wilson', 'Administrative Assistant', 47, 38),
(23, 303, 3, 7, 'Assistant Smith', 'Administrative Assistant', 47, 36),
(24, 304, 4, 2, 'Assistant Johnson', 'Administrative Assistant', 47, 38),
(25, 305, 5, 10, 'Assistant Williams', 'Administrative Assistant', 47, 40),
(26, 306, 6, 4, 'Assistant Roselyn', 'Administrative Assistant', 47, 36),
(27, 307, 7, 6, 'Assistant Taylor', 'Administrative Assistant', 47, 38),
(28, 308, 8, 8, 'Assistant Lee', 'Administrative Assistant', 47, 40),
(29, 309, 9, 5, 'Assistant Rodriguez', 'Administrative Assistant', 47, 36),
(30, 310, 10, 3, 'Assistant Nguyen', 'Administrative Assistant', 47, 40),
(31, 401, 9, 1, 'Secretary Davis', 'Office Secretary', 50, 40),
(32, 402, 1, 2, 'Secretary Garcia', 'Office Secretary', 52, 37),
(33, 403, 7, 3, 'Secretary Evans', 'Office Secretary', 48, 38),
(34, 404, 2, 4, 'Secretary Fisher', 'Office Secretary', 45, 36),
(35, 405, 10, 5, 'Secretary Adams', 'Office Secretary', 35, 40),
(36, 406, 4, 6, 'Secretary Baker', 'Office Secretary', 25, 38),
(37, 407, 6, 7, 'Secretary Clark', 'Office Secretary', 25, 36),
(38, 408, 8, 8, 'Secretary Harris', 'Office Secretary', 25, 38),
(39, 409, 5, 9, 'Secretary Jackson', 'Office Secretary', 25, 36),
(40, 410, 3, 10, 'Secretary King', 'Office Secretary', 25, 40);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
