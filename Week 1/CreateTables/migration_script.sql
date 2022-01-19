-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: HR_Sample1
-- Source Schemata: HR_Sample
-- Created: Wed Jan 19 20:08:30 2022
-- Workbench Version: 8.0.27
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------------------------------------------------------
-- Schema HR_Sample1
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `HR_Sample1` ;
CREATE SCHEMA IF NOT EXISTS `HR_Sample1` ;

-- ----------------------------------------------------------------------------
-- Table HR_Sample1.Employee
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `HR_Sample1`.`Employee` (
  `Emp_ID` INT(11) NOT NULL,
  `Emp_FName` VARCHAR(45) CHARACTER SET 'latin1' NOT NULL,
  `Emp_LName` VARCHAR(45) CHARACTER SET 'latin1' NOT NULL,
  `Emp_Age` INT(11) NOT NULL,
  `Emp_Dept` VARCHAR(20) CHARACTER SET 'latin1' NOT NULL,
  `Emp_Email` VARCHAR(45) CHARACTER SET 'latin1' NOT NULL,
  `Emp_YearsHired` FLOAT NOT NULL,
  `Emp_Salary` DECIMAL(10,0) NOT NULL,
  PRIMARY KEY (`Emp_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_bin;

-- ----------------------------------------------------------------------------
-- Table HR_Sample1.Locations
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `HR_Sample1`.`Locations` (
  `Local_ID` INT(11) NOT NULL,
  `Emp_ID` INT(11) NOT NULL,
  `Emp_Num` INT(11) NOT NULL,
  `Emp_Street` VARCHAR(45) CHARACTER SET 'latin1' NOT NULL,
  `Emp_Apt` CHAR(4) CHARACTER SET 'latin1' NULL DEFAULT NULL,
  `Emp_City` VARCHAR(45) CHARACTER SET 'latin1' NOT NULL,
  `Emp_State` VARCHAR(45) CHARACTER SET 'latin1' NOT NULL,
  `Emp_ZipCode` INT(11) NOT NULL,
  PRIMARY KEY (`Local_ID`),
  INDEX `Emp_ID_idx` (`Emp_ID` ASC),
  CONSTRAINT `Emp_ID`
    FOREIGN KEY (`Emp_ID`)
    REFERENCES `HR_Sample1`.`Employee` (`Emp_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_bin;
SET FOREIGN_KEY_CHECKS = 1;
