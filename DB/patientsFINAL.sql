-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema patients
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `patients` ;

-- -----------------------------------------------------
-- Schema patients
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `patients` DEFAULT CHARACTER SET utf8 ;
USE `patients` ;

-- -----------------------------------------------------
-- Table `patient_info`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `patient_info` ;

CREATE TABLE IF NOT EXISTS `patient_info` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `full_name` VARCHAR(200) NOT NULL,
  `appointment_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reason_visit` VARCHAR(200) NOT NULL,
  `insurance_info` VARCHAR(200) NULL DEFAULT 'NOT INSURED',
  `heart_rate` INT NOT NULL,
  `systolic` INT NOT NULL,
  `diastolic` INT NOT NULL,
  `respiration_rate` INT NOT NULL,
  `temperature` DOUBLE NOT NULL,
  `primary_doctor` VARCHAR(100) NULL DEFAULT 'FIRST VISIT',
  `date_of_birth` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS patientUser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'patientUser'@'localhost' IDENTIFIED BY 'patientUser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'patientUser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `patient_info`
-- -----------------------------------------------------
START TRANSACTION;
USE `patients`;
INSERT INTO `patient_info` (`id`, `full_name`, `appointment_date`, `reason_visit`, `insurance_info`, `heart_rate`, `systolic`, `diastolic`, `respiration_rate`, `temperature`, `primary_doctor`, `date_of_birth`) VALUES (1, 'Blake Vieyra', '2024-01-01', 'headache', 'mediCal', 80, 120, 80, 12, 98.6, 'Dr. Happy', '1993-01-01');
INSERT INTO `patient_info` (`id`, `full_name`, `appointment_date`, `reason_visit`, `insurance_info`, `heart_rate`, `systolic`, `diastolic`, `respiration_rate`, `temperature`, `primary_doctor`, `date_of_birth`) VALUES (2, 'Selena Gomez', '2024-01-01', 'ankle pain', 'BlueCross', 90, 110, 76, 10, 99.0, 'Dr. Bob', '1988-04-20');
INSERT INTO `patient_info` (`id`, `full_name`, `appointment_date`, `reason_visit`, `insurance_info`, `heart_rate`, `systolic`, `diastolic`, `respiration_rate`, `temperature`, `primary_doctor`, `date_of_birth`) VALUES (3, 'John Owie', '2024-01-01', 'elbow pain', NULL, 140, 140, 90, 22, 101.4, 'Dr. Love', '1989-12-23');
INSERT INTO `patient_info` (`id`, `full_name`, `appointment_date`, `reason_visit`, `insurance_info`, `heart_rate`, `systolic`, `diastolic`, `respiration_rate`, `temperature`, `primary_doctor`, `date_of_birth`) VALUES (4, 'Willy Billy', '2023-01-04', 'physical', 'mediCal', 100, 135, 95, 14, 98.9, 'Dr. Love', '1950-05-23');
INSERT INTO `patient_info` (`id`, `full_name`, `appointment_date`, `reason_visit`, `insurance_info`, `heart_rate`, `systolic`, `diastolic`, `respiration_rate`, `temperature`, `primary_doctor`, `date_of_birth`) VALUES (5, 'Peter Piper', '2022-01-15', 'chest pain', 'BlueCross', 90, 150, 90, 20, 103.3, 'Dr. Bob', '1976-02-23');

COMMIT;

