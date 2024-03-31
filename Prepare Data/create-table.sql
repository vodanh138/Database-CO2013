CREATE TABLE Nurse(
  Code              CHAR(10)   NOT NULL   UNIQUE,
  Last_Name         TEXT, --include surname and middle name
  First_Name        TEXT, --given name
  Date_Of_Birth     DATE,
  Gender            CHAR       CHECK(Gender = 'F' or Gender = 'M'),
  Address           TEXT,
  Start_Date        DATE,
  Specialty_Name    TEXT,
  Degree_Year       SMALLINT   CHECK(Degree_Year BETWEEN 0 AND EXTRACT(YEAR FROM CURRENT_DATE)),
  End_Date          DATE,
  Is_Working        BOOL,
  Dept_Code         CHAR(2),
  PRIMARY KEY (Code)
);

CREATE TABLE Nurse_Phone(
  Nurse_Code        CHAR(10),
  Phone_Number      VARCHAR(11),
  PRIMARY KEY (Nurse_Code, Phone_Number),
  FOREIGN KEY (Nurse_Code) REFERENCES Nurse(Code)
      ON DELETE RESTRICT   ON UPDATE RESTRICT
);

CREATE TABLE Doctor(
  Code              CHAR(10)   NOT NULL   UNIQUE,
  Last_Name         TEXT,
  First_Name        TEXT,
  Date_Of_Birth     DATE,
  Gender            CHAR       CHECK(Gender = 'F' or Gender = 'M'),
  Address           TEXT,
  Start_Date        DATE,
  Specialty_Name    TEXT,
  Degree_Year       SMALLINT   CHECK(Degree_Year BETWEEN 0 AND EXTRACT(YEAR FROM CURRENT_DATE)),
  End_Date          DATE,
  Is_Working        BOOL,
  Dept_Code         CHAR(2),
  PRIMARY KEY (Code)
);

CREATE TABLE Doctor_Phone(
  Doctor_Code      CHAR(10),
  Phone_Number     VARCHAR(11),
  PRIMARY KEY (Doctor_Code, Phone_Number),
  FOREIGN KEY (Doctor_Code) REFERENCES Doctor(Code)
      ON DELETE RESTRICT   ON UPDATE RESTRICT
);

CREATE TABLE Department(
  Code             CHAR(2)   NOT NULL   UNIQUE,
  Title            TEXT,
  Dean_Code        CHAR(10),
  PRIMARY KEY (Code),
  FOREIGN KEY (Dean_Code) REFERENCES Doctor(Code)
     ON DELETE RESTRICT   ON UPDATE RESTRICT
);

ALTER TABLE Nurse
ADD FOREIGN KEY (Dept_Code) REFERENCES Department(Code)
ON DELETE SET NULL    ON UPDATE CASCADE;

ALTER TABLE Doctor
ADD FOREIGN KEY (Dept_Code) REFERENCES Department(Code)
ON DELETE SET NULL    ON UPDATE CASCADE;

CREATE TABLE Patient(
  Patient_Number      INT       GENERATED ALWAYS AS IDENTITY,
  Last_Name           TEXT,
  First_Name          TEXT,
  Date_Of_Birth       DATE,
  Gender              CHAR      CHECK(Gender = 'F' or Gender = 'M'),
  Address             TEXT,
  Phone_Number        VARCHAR(11),
  PRIMARY KEY (Patient_Number)
);

CREATE TABLE Outpatient(
  Patient_Number      INT        NOT NULL   UNIQUE,
  Outpatient_Code     CHAR(11)   NOT NULL   UNIQUE    CHECK (Outpatient_Code LIKE 'OP%'),
  PRIMARY KEY (Patient_Number, Outpatient_Code),
  FOREIGN KEY (Patient_Number) REFERENCES Patient(Patient_Number)
      ON DELETE RESTRICT    ON UPDATE RESTRICT 
);

CREATE TABLE Examination(
  Doctor_Code         CHAR(10)   NOT NULL, 
  Patient_Number      INT        NOT NULL, 
  Outpatient_Code     CHAR(11)   NOT NULL, 
  Exam_Timestamp      TIMESTAMP  NOT NULL, 
  Next_Exam_Date      DATE,
  Diagnosis           TEXT,
  Fee                 INT,
  PRIMARY KEY (Doctor_Code, Patient_Number, Outpatient_Code, Exam_Timestamp),
  FOREIGN KEY (Doctor_Code) REFERENCES Doctor(Code)
      ON DELETE RESTRICT    ON UPDATE RESTRICT, 
  FOREIGN KEY (Patient_Number, Outpatient_Code) REFERENCES Outpatient(Patient_Number, Outpatient_Code)
      ON DELETE RESTRICT    ON UPDATE RESTRICT 
);

CREATE TABLE Exam_Medication(
  Doctor_Code         CHAR(10)   NOT NULL, 
  Patient_Number      INT        NOT NULL, 
  Outpatient_Code     CHAR(11)   NOT NULL,
  Exam_Timestamp      TIMESTAMP  NOT NULL, 
  Medication_Code     CHAR(10),
  Quantity            INT,
  PRIMARY KEY (Doctor_Code, Patient_Number, Outpatient_Code, Medication_Code, Exam_Timestamp), 
  FOREIGN KEY (Doctor_Code, Patient_Number, Outpatient_Code, Exam_Timestamp) 
    REFERENCES Examination(Doctor_Code, Patient_Number, Outpatient_Code, Exam_Timestamp)
    ON DELETE RESTRICT    ON UPDATE RESTRICT 
);

CREATE TABLE Inpatient(
  Patient_Number      INT        NOT NULL   UNIQUE,
  Inpatient_Code      CHAR(11)   NOT NULL   UNIQUE    CHECK (Inpatient_Code LIKE 'IP%'), 
  PRIMARY KEY (Patient_Number, Inpatient_Code), 
  FOREIGN KEY (Patient_Number) REFERENCES Patient(Patient_Number)
      ON DELETE RESTRICT    ON UPDATE RESTRICT 
);

CREATE TABLE Admission(
  Patient_Number      INT        NOT NULL,
  Inpatient_Code      CHAR(11)   NOT NULL,
  Admission_Timestamp TIMESTAMP  NOT NULL,
  Nurse_Code          CHAR(10),
  Diagnosis           TEXT,
  Sick_Room           CHAR(6),
  Recovered           BOOL       DEFAULT FALSE,
  Fee                 INT,
  Discharge_Timestamp TIMESTAMP,
  PRIMARY KEY (Patient_Number, Inpatient_Code, Admission_Timestamp),
  FOREIGN KEY (Patient_Number, Inpatient_Code) REFERENCES Inpatient(Patient_Number, Inpatient_Code)
      ON DELETE RESTRICT    ON UPDATE RESTRICT,
  FOREIGN KEY (Nurse_Code) REFERENCES Nurse(Code)
      ON DELETE RESTRICT    ON UPDATE RESTRICT
);

CREATE TABLE Treatment(
  Doctor_Code         CHAR(10)   NOT NULL, 
  Patient_Number      INT        NOT NULL, 
  Inpatient_Code      CHAR(11)   NOT NULL,
  Admission_Timestamp TIMESTAMP  NOT NULL, 
  Start_Timestamp     TIMESTAMP,
  End_Timestamp       TIMESTAMP,
  Result_             TEXT,
  PRIMARY KEY (Doctor_Code, Patient_Number, Inpatient_Code, Admission_Timestamp, Start_Timestamp),
  FOREIGN KEY (Doctor_Code) REFERENCES Doctor(Code)
      ON DELETE RESTRICT    ON UPDATE RESTRICT,
  FOREIGN KEY (Patient_Number, Inpatient_Code, Admission_Timestamp) 
      REFERENCES Admission(Patient_Number, Inpatient_Code, Admission_Timestamp)
      ON DELETE RESTRICT    ON UPDATE RESTRICT 
);

CREATE TABLE Treatment_Medication(
  Doctor_Code         CHAR(10)   NOT NULL, 
  Patient_Number      INT        NOT NULL, 
  Inpatient_Code      CHAR(11)   NOT NULL,
  Admission_Timestamp TIMESTAMP  NOT NULL,
  Start_Timestamp     TIMESTAMP,
  Medication_Code     CHAR(10),
  Quantity            INT,
  PRIMARY KEY (Doctor_Code, Patient_Number, Inpatient_Code, Admission_Timestamp, Start_Timestamp, Medication_Code),
  FOREIGN KEY (Doctor_Code, Patient_Number, Inpatient_Code, Admission_Timestamp, Start_Timestamp) 
      REFERENCES Treatment(Doctor_Code, Patient_Number, Inpatient_Code, Admission_Timestamp, Start_Timestamp)
      ON DELETE RESTRICT    ON UPDATE RESTRICT
);

CREATE TABLE Medication(
  Code            CHAR(10)   NOT NULL   UNIQUE,
  Name_           TEXT,
  Price           INT,
  PRIMARY KEY (Code)
);

ALTER TABLE Exam_Medication
ADD FOREIGN KEY (Medication_Code) REFERENCES Medication(Code)
ON DELETE RESTRICT   ON UPDATE RESTRICT;

ALTER TABLE Treatment_Medication
ADD FOREIGN KEY (Medication_Code) REFERENCES Medication(Code)
ON DELETE RESTRICT   ON UPDATE RESTRICT;

CREATE TABLE Medication_Effect(
  Code            CHAR(10)   NOT NULL,
  Effect          TEXT,
  PRIMARY KEY (Code, Effect),
  FOREIGN KEY (Code) REFERENCES Medication(Code)
      ON DELETE RESTRICT   ON UPDATE RESTRICT
);

CREATE TABLE Provider(
  Number_         INT   NOT NULL   UNIQUE,
  Name_           TEXT,
  Address         TEXT,
  Phone_Number    VARCHAR(11),
  PRIMARY KEY (Number_)
);

CREATE TABLE Imported_Medicine(
  Medication_Code    CHAR(10)   NOT NULL,
  Provider_Number    INT        NOT NULL,
  Imported_Timestamp TIMESTAMP  NOT NULL,
  Imported_Price     INT,
  PRIMARY KEY (Medication_Code, Provider_Number, Imported_Timestamp),
  FOREIGN KEY (Medication_Code) REFERENCES Medication(Code)
      ON DELETE RESTRICT   ON UPDATE RESTRICT,
  FOREIGN KEY (Provider_Number) REFERENCES Provider(Number_)
      ON DELETE RESTRICT   ON UPDATE RESTRICT
);

CREATE TABLE Medicine_Box(
  Medication_Code    CHAR(10)   NOT NULL,
  Provider_Number    INT        NOT NULL,
  Imported_Timestamp TIMESTAMP  NOT NULL,
  ID                 INT        NOT NULL,
  Expiration_Date    DATE,
  Quantity           INT,
  Out_Of_Date        BOOL       DEFAULT FALSE,
  PRIMARY KEY (Medication_Code, Provider_Number, Imported_Timestamp, ID),
  FOREIGN KEY (Medication_Code, Provider_Number, Imported_Timestamp)
      REFERENCES Imported_Medicine(Medication_Code, Provider_Number, Imported_Timestamp)
      ON DELETE RESTRICT   ON UPDATE RESTRICT
);

delete from Medicine_Box;
delete from Imported_Medicine;
delete from Treatment_Medication;
delete from Treatment;
delete from Admission;
delete from Exam_Medication;
delete from Examination;