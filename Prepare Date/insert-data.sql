--insert doctor

INSERT INTO Doctor(Code, Last_Name, First_Name, Date_Of_Birth, Gender, Address, Start_Date, Specialty_Name, Degree_Year, Is_Working) 
VALUES (
  'D000000001',
  'Nguyen Van',
  'A',
  '1983-09-21',
  'M',
  '2/60 Ly Thuong Kiet, Ward 14, District 10, HCM',
  '2010-11-01',
  'Cardiology',
  2007,
  TRUE
);

INSERT INTO Doctor(Code, Last_Name, First_Name, Date_Of_Birth, Gender, Address, Start_Date, Specialty_Name, Degree_Year, Is_Working) 
VALUES (
  'D000000002',
  'Tran Van',
  'B',
  '1980-05-05',
  'M',
  '5/5 Dien Bien Phu, Ward 1, District 3, HCM',
  '2014-01-20',
  'Gastroenterology',
  2005,
  TRUE
);

INSERT INTO Doctor(Code, Last_Name, First_Name, Date_Of_Birth, Gender, Address, Start_Date, Specialty_Name, Degree_Year, Is_Working) 
VALUES (
  'D000000003',
  'Le Thi',
  'C',
  '1985-04-24',
  'F',
  '542/11 Nguyen Trai, Nguyen Cu Trinh, District 1, HCM',
  '2015-03-22',
  'Neurology',
  2009,
  TRUE
);

INSERT INTO Doctor(Code, Last_Name, First_Name, Date_Of_Birth, Gender, Address, Start_Date, Specialty_Name, Degree_Year, Is_Working) 
VALUES (
  'D000000004',
  'Pham Thi',
  'D',
  '1982-08-15',
  'F',
  '649/22 An Duong Vuong, Ward 4, District 5, HCM',
  '2015-12-31',
  'Traditional Medicine',
  2009,
  TRUE
);

INSERT INTO Doctor(Code, Last_Name, First_Name, Date_Of_Birth, Gender, Address, Start_Date, Specialty_Name, Degree_Year, Is_Working) 
VALUES (
  'D000000005',
  'Trinh Van',
  'H',
  '1980-02-14',
  'M',
  '12/65 Tran Hung Dao, Ward 5, District 5, HCM',
  '2011-10-18',
  'Cardiology',
  2005,
  TRUE
);

--insert doctor phone

INSERT INTO Doctor_Phone(Doctor_Code, Phone_Number)
VALUES(
  'D000000001',
  '0881234567'
);

INSERT INTO Doctor_Phone(Doctor_Code, Phone_Number)
VALUES(
  'D000000001',
  '0912345677'
);

INSERT INTO Doctor_Phone(Doctor_Code, Phone_Number)
VALUES(
  'D000000002',
  '0908765432'
);

INSERT INTO Doctor_Phone(Doctor_Code, Phone_Number)
VALUES(
  'D000000003',
  '0919637925'
);

INSERT INTO Doctor_Phone(Doctor_Code, Phone_Number)
VALUES(
  'D000000004',
  '0932189600'
);

INSERT INTO Doctor_Phone(Doctor_Code, Phone_Number)
VALUES(
  'D000000005',
  '0942999300'
);

--insert department

INSERT INTO Department(Code, Title, Dean_Code)
VALUES(
  'CA',
  'Cardiology',
  'D000000001'
);

INSERT INTO Department(Code, Title, Dean_Code)
VALUES(
  'GA',
  'Gastroenterology',
  'D000000002'
);

INSERT INTO Department(Code, Title, Dean_Code)
VALUES(
  'NE',
  'Neurology',
  'D000000003'
);

INSERT INTO Department(Code, Title, Dean_Code)
VALUES(
  'TM',
  'Traditional Medicine',
  'D000000004'
);

INSERT INTO Department(Code, Title)
VALUES(
  'EM',
  'Emergency'
);

--update department code for doctor 

UPDATE Doctor 
SET Dept_Code = 'CA'
WHERE Code = 'D000000001' OR Code = 'D000000005';

UPDATE Doctor 
SET Dept_Code = 'GA'
WHERE Code = 'D000000002';

UPDATE Doctor 
SET Dept_Code = 'NE'
WHERE Code = 'D000000003';

UPDATE Doctor 
SET Dept_Code = 'TM'
WHERE Code = 'D000000004';

--insert nurse

INSERT INTO Nurse(Code, Last_Name, First_Name, Date_Of_Birth, Gender, Address, Start_Date, Specialty_Name, Degree_Year, Dept_Code, Is_Working) 
VALUES (
  'N000000001',
  'Nguyen Thi',
  'A',
  '1988-03-27',
  'F',
  '35/7 Truong Chinh, Tay Thanh, Tan Phu, HCM',
  '2016-05-20',
  'Cardiology',
  2013,
  'EM',
  TRUE
);

INSERT INTO Nurse(Code, Last_Name, First_Name, Date_Of_Birth, Gender, Address, Start_Date, Specialty_Name, Degree_Year, Dept_Code, Is_Working) 
VALUES (
  'N000000002',
  'Le Thi',
  'B',
  '1990-07-23',
  'F',
  '25/1 Nguyen Tri Phuong, Ward 4, District 10, HCM',
  '2017-05-20',
  'Cardiology',
  2014,
  'CA',
  TRUE
);

INSERT INTO Nurse(Code, Last_Name, First_Name, Date_Of_Birth, Gender, Address, Start_Date, Specialty_Name, Degree_Year, Dept_Code, Is_Working) 
VALUES (
  'N000000003',
  'Tran Van',
  'C',
  '1992-07-10',
  'M',
  '300 Tan Thang, Son Ky, Tan Phu, HCM',
  '2020-01-12',
  'Neurology',
  2019,
  'NE',
  TRUE
);

INSERT INTO Nurse(Code, Last_Name, First_Name, Date_Of_Birth, Gender, Address, Start_Date, Specialty_Name, Degree_Year, Dept_Code, Is_Working) 
VALUES (
  'N000000004',
  'Phan Thi',
  'D',
  '1983-10-25',
  'F',
  '23 Truong Sa, Ward 14, District 3, HCM',
  '2013-06-13',
  'Gastroenterology',
  2009,
  'GA',
  TRUE
);

INSERT INTO Nurse(Code, Last_Name, First_Name, Date_Of_Birth, Gender, Address, Start_Date, Specialty_Name, Degree_Year, Dept_Code, Is_Working) 
VALUES (
  'N000000005',
  'Huynh Thi',
  'E',
  '1988-09-12',
  'F',
  '24/6 Truong Chinh, Ward 13, Tan Binh, HCM',
  '2018-04-22',
  'Traditional Medicine',
  2012,
  'TM',
  TRUE
);

--insert nurse phone

INSERT INTO Nurse_Phone(Nurse_Code, Phone_Number)
VALUES(
  'N000000001',
  '0981234567'
);

INSERT INTO Nurse_Phone(Nurse_Code, Phone_Number)
VALUES(
  'N000000002',
  '0882345677'
);

INSERT INTO Nurse_Phone(Nurse_Code, Phone_Number)
VALUES(
  'N000000002',
  '0918765432'
);

INSERT INTO Nurse_Phone(Nurse_Code, Phone_Number)
VALUES(
  'N000000003',
  '0908637925'
);

INSERT INTO Nurse_Phone(Nurse_Code, Phone_Number)
VALUES(
  'N000000004',
  '0932189600'
);

INSERT INTO Nurse_Phone(Nurse_Code, Phone_Number)
VALUES(
  'N000000005',
  '0981999300'
);

--insert provider

INSERT INTO Provider(Number_, Name_, Address, Phone_Number)
VALUES(
  1,
  'Sanofi Vietnam',
  '10 Ham Nghi, Ben Nghe, District 1, HCM',
  '02838298526'
);

INSERT INTO Provider(Number_, Name_, Address, Phone_Number)
VALUES(
  2,
  'STADA Vietnam LTD',
  '33 Le Duan, Ben Nghe, District 1, HCM',
  '02836362581'
);

INSERT INTO Provider(Number_, Name_, Address, Phone_Number)
VALUES(
  3,
  'Agimexpharm',
  '51 3A Street, Binh Tri Dong B, Binh Tan, HCM',
  '02838777039'
);

INSERT INTO Provider(Number_, Name_, Address, Phone_Number)
VALUES(
  4,
  'Nature''s Bounty',
  '110 Orville Dr, Bohemia, NY 11716, USA',
  '18004332990'
);

INSERT INTO Provider(Number_, Name_, Address, Phone_Number)
VALUES(
  5,
  'Danapha',
  '14 8th Street, Tan Tao, Binh Tan, HCM',
  '02836205609'
);

--insert medication 

INSERT INTO Medication(Code, Name_, Price)
VALUES(
  'N02BE01_01',
  'Paracetamol 500 mg',
  650
);

INSERT INTO Medication(Code, Name_, Price)
VALUES(
  'B01AC06_01',
  'Aspirin 81 mg',
  150
);

INSERT INTO Medication(Code, Name_, Price)
VALUES(
  'A02BC05_01',
  'Esomeprazole 40 mg',
  1250
);

INSERT INTO Medication(Code, Name_, Price)
VALUES(
  'N06DX02_01',
  'Gingko Biloba',
  3450
);

INSERT INTO Medication(Code, Name_, Price)
VALUES(
  'R05DA09_01',
  'Danospan',
  60000
);

--insert medication effect

INSERT INTO Medication_Effect(Code, Effect)
VALUES(
  'N02BE01_01',
  'Relieve pain'
);

INSERT INTO Medication_Effect(Code, Effect)
VALUES(
  'N02BE01_01',
  'Reduce fever'
);

INSERT INTO Medication_Effect(Code, Effect)
VALUES(
  'B01AC06_01',
  'Relieve pain'
);

INSERT INTO Medication_Effect(Code, Effect)
VALUES(
  'B01AC06_01',
  'Reduce fever'
);

INSERT INTO Medication_Effect(Code, Effect)
VALUES(
  'B01AC06_01',
  'Prevent blood clots'
);

INSERT INTO Medication_Effect(Code, Effect)
VALUES(
  'A02BC05_01',
  'Treat Gastroesophageal Reflux Disease'
);

INSERT INTO Medication_Effect(Code, Effect)
VALUES(
  'A02BC05_01',
  'Prevent gastric ulcers'
);

INSERT INTO Medication_Effect(Code, Effect)
VALUES(
  'N06DX02_01',
  'Maintain healthy circulation'
);

INSERT INTO Medication_Effect(Code, Effect)
VALUES(
  'N06DX02_01',
  'Support mental alertness'
);

INSERT INTO Medication_Effect(Code, Effect)
VALUES(
  'N06DX02_01',
  'Support memory'
);

INSERT INTO Medication_Effect(Code, Effect)
VALUES(
  'R05DA09_01',
  'Treat upper respiratory tract infection'
);

INSERT INTO Medication_Effect(Code, Effect)
VALUES(
  'R05DA09_01',
  'Treat chronic bronchitis'
);

--insert imported medicine

INSERT INTO Imported_Medicine(Medication_Code, Provider_Number, Imported_Timestamp, Imported_Price)
VALUES(
  'N02BE01_01',
  1,
  '2019-10-19 05:30:54+07',
  600
);

INSERT INTO Imported_Medicine(Medication_Code, Provider_Number, Imported_Timestamp, Imported_Price)
VALUES(
  'N02BE01_01',
  2,
  '2019-10-19 15:15:23+07',
  550
);

INSERT INTO Imported_Medicine(Medication_Code, Provider_Number, Imported_Timestamp, Imported_Price)
VALUES(
  'B01AC06_01',
  3,
  '2022-01-02 06:45:12+07',
  100
);

INSERT INTO Imported_Medicine(Medication_Code, Provider_Number, Imported_Timestamp, Imported_Price)
VALUES(
  'A02BC05_01',
  2,
  '2023-05-05 07:00:00+07',
  1000
);

INSERT INTO Imported_Medicine(Medication_Code, Provider_Number, Imported_Timestamp, Imported_Price)
VALUES(
  'N06DX02_01',
  4,
  '2023-05-05 07:15:00+07',
  3000
);

INSERT INTO Imported_Medicine(Medication_Code, Provider_Number, Imported_Timestamp, Imported_Price)
VALUES(
  'R05DA09_01',
  5,
  '2023-10-21 16:20:35+07',
  55000
);

--insert medicine box

INSERT INTO Medicine_Box(Medication_Code, Provider_Number, Imported_Timestamp, ID, Expiration_Date, Quantity, Out_Of_Date)
VALUES(
  'N02BE01_01',
  1,
  '2019-10-19 05:30:54+07',
  1,
  '2024-09-21',
  5000,
  FALSE
);

INSERT INTO Medicine_Box(Medication_Code, Provider_Number, Imported_Timestamp, ID, Expiration_Date, Quantity, Out_Of_Date)
VALUES(
  'N02BE01_01',
  2,
  '2019-10-19 15:15:23+07',
  1,
  '2024-10-01',
  5000,
  FALSE
);

INSERT INTO Medicine_Box(Medication_Code, Provider_Number, Imported_Timestamp, ID, Expiration_Date, Quantity, Out_Of_Date)
VALUES(
  'N02BE01_01',
  2,
  '2019-10-19 15:15:23+07',
  2,
  '2024-10-15',
  5000,
  FALSE
);

INSERT INTO Medicine_Box(Medication_Code, Provider_Number, Imported_Timestamp, ID, Expiration_Date, Quantity, Out_Of_Date)
VALUES(
  'N02BE01_01',
  2,
  '2019-10-19 15:15:23+07',
  3,
  '2024-10-15',
  5000,
  FALSE
);

INSERT INTO Medicine_Box(Medication_Code, Provider_Number, Imported_Timestamp, ID, Expiration_Date, Quantity, Out_Of_Date)
VALUES(
  'B01AC06_01',
  3,
  '2022-01-02 06:45:12+07',
  1,
  '2023-12-31',
  8000,
  FALSE
);

INSERT INTO Medicine_Box(Medication_Code, Provider_Number, Imported_Timestamp, ID, Expiration_Date, Quantity, Out_Of_Date)
VALUES(
  'B01AC06_01',
  3,
  '2022-01-02 06:45:12+07',
  2,
  '2023-11-29',
  8000,
  TRUE
);

INSERT INTO Medicine_Box(Medication_Code, Provider_Number, Imported_Timestamp, ID, Expiration_Date, Quantity, Out_Of_Date)
VALUES(
  'A02BC05_01',
  2,
  '2023-05-05 07:00:00+07',
  1,
  '2025-04-27',
  1000,
  FALSE
);

INSERT INTO Medicine_Box(Medication_Code, Provider_Number, Imported_Timestamp, ID, Expiration_Date, Quantity, Out_Of_Date)
VALUES(
  'N06DX02_01',
  4,
  '2023-05-05 07:15:00+07',
  1,
  '2026-05-01',
  3000,
  FALSE
);

INSERT INTO Medicine_Box(Medication_Code, Provider_Number, Imported_Timestamp, ID, Expiration_Date, Quantity, Out_Of_Date)
VALUES(
  'R05DA09_01',
  5,
  '2023-10-21 16:20:35+07',
  1,
  '2025-10-01',
  50,
  FALSE
);

--insert patient 

--1
INSERT INTO Patient(Last_Name, First_Name, Date_Of_Birth, Gender, Address, Phone_Number)
VALUES(
  'Vo Van',
  'G',
  '1960-02-05',
  'M',
  '29/25 Pham Van Sang, Xuan Thoi Thuong, Hoc Mon, HCM',
  '0917010203'
);

--2
INSERT INTO Patient(Last_Name, First_Name, Date_Of_Birth, Gender, Address, Phone_Number)
VALUES(
  'Hoang Thi',
  'I',
  '1980-06-12',
  'F',
  '12/61 Nguyen Ai Quoc, Town 4, Bien Hoa, Dong Nai',
  '0906320099'
);

--3
INSERT INTO Patient(Last_Name, First_Name, Date_Of_Birth, Gender, Address, Phone_Number)
VALUES(
  'Vuong Van',
  'K',
  '1999-09-21',
  'M',
  '45/9 Nguyen Van Tang, Long Thanh My, District 9, HCM',
  '0921996230'
);

--4
INSERT INTO Patient(Last_Name, First_Name, Date_Of_Birth, Gender, Address, Phone_Number)
VALUES(
  'Ly Van',
  'L',
  '1972-12-27',
  'M',
  '32/56 Lu Gia, Ward 15, District 11, HCM',
  '0934789368'
);

--5
INSERT INTO Patient(Last_Name, First_Name, Date_Of_Birth, Gender, Address, Phone_Number)
VALUES(
  'Dao Thi',
  'M',
  '2000-01-24',
  'F',
  '54/17 Dong Nai, Ward 15, District 10, HCM',
  '0967802371'
);

--6
INSERT INTO Patient(Last_Name, First_Name, Date_Of_Birth, Gender, Address, Phone_Number)
VALUES(
  'Ngo Van',
  'N',
  '1984-11-29',
  'M',
  '264B Tran Quoc Toan, Binh Minh 1, Di An, Binh Duong',
  '0854901373'
);

--7
INSERT INTO Patient(Last_Name, First_Name, Date_Of_Birth, Gender, Address, Phone_Number)
VALUES(
  'Bui Thi',
  'O',
  '1972-08-20',
  'F',
  '208/2C Dinh Tien Hoang, Tan Dinh, District 1, HCM',
  '0887612345'
);

--8
INSERT INTO Patient(Last_Name, First_Name, Date_Of_Birth, Gender, Address, Phone_Number)
VALUES(
  'Dang Van',
  'P',
  '1995-10-03',
  'M',
  '52/47 Hoang Van Thu, Ward 4, Tan Binh, HCM',
  '0955190742'
);

--9
INSERT INTO Patient(Last_Name, First_Name, Date_Of_Birth, Gender, Address, Phone_Number)
VALUES(
  'Duong Thi',
  'Q',
  '1987-03-27',
  'F',
  '51/5 Phan Van Hon, Tan Thoi Nhat, District 12, HCM',
  '0903456987'
);

--10
INSERT INTO Patient(Last_Name, First_Name, Date_Of_Birth, Gender, Address, Phone_Number)
VALUES(
  'Do Van',
  'R',
  '1955-09-15',
  'M',
  '14/2 Van Kiep, Ward 3, Binh Thanh, HCM',
  '0817892478'
);

--insert outpatient

INSERT INTO OutPatient(Patient_Number, Outpatient_Code)
VALUES(
  1,
  'OP000000001'
);

INSERT INTO OutPatient(Patient_Number, Outpatient_Code)
VALUES(
  2,
  'OP000000002'
);

INSERT INTO OutPatient(Patient_Number, Outpatient_Code)
VALUES(
  3,
  'OP000000003'
);

INSERT INTO OutPatient(Patient_Number, Outpatient_Code)
VALUES(
  4,
  'OP000000004'
);

INSERT INTO OutPatient(Patient_Number, Outpatient_Code)
VALUES(
  5,
  'OP000000005'
);

INSERT INTO OutPatient(Patient_Number, Outpatient_Code)
VALUES(
  6,
  'OP000000006'
);

--insert examination

--1
INSERT INTO Examination(Doctor_Code, Patient_Number, Outpatient_Code, Exam_Timestamp, Next_Exam_Date, Diagnosis, Fee)
VALUES(
  'D000000001',
  1,
  'OP000000001',
  '2022-01-08 7:05:25+07',
  '2022-01-22',
  'Stroke', --aspirin
  38700
);

--2
INSERT INTO Examination(Doctor_Code, Patient_Number, Outpatient_Code, Exam_Timestamp, Diagnosis, Fee)
VALUES(
  'D000000003',
  2,
  'OP000000002',
  '2022-01-08 9:30:28+07',
  'Migraine headache', --paracetamol
  38700
);

--3
INSERT INTO Examination(Doctor_Code, Patient_Number, Outpatient_Code, Exam_Timestamp, Next_Exam_Date, Diagnosis, Fee)
VALUES(
  'D000000003',
  3,
  'OP000000003',
  '2022-06-30 8:24:58+07',
  '2022-07-30',
  'Anxiety disorder', --Gingko Biloba
  38700
);

--4
INSERT INTO Examination(Doctor_Code, Patient_Number, Outpatient_Code, Exam_Timestamp, Next_Exam_Date, Diagnosis, Fee)
VALUES(
  'D000000002',
  4,
  'OP000000004',
  '2022-06-30 8:24:58+07',
  '2022-07-13',
  'Heartburn', --Esomeprazole
  100000
);

--5
INSERT INTO Examination(Doctor_Code, Patient_Number, Outpatient_Code, Exam_Timestamp, Next_Exam_Date, Diagnosis, Fee)
VALUES(
  'D000000004',
  5,
  'OP000000005',
  '2022-11-25 11:05:27+07',
  '2022-12-02',
  'Tinnitus', --Gingko Biloba
  75000
);

--6
INSERT INTO Examination(Doctor_Code, Patient_Number, Outpatient_Code, Exam_Timestamp, Next_Exam_Date, Diagnosis, Fee)
VALUES(
  'D000000004',
  6,
  'OP000000006',
  '2023-01-10 13:00:37+07',
  '2023-01-24',
  'chronic bronchitis', --Danospan
  38700
);

--2 second time
INSERT INTO Examination(Doctor_Code, Patient_Number, Outpatient_Code, Exam_Timestamp, Next_Exam_Date, Diagnosis, Fee)
VALUES(
  'D000000001',
  2,
  'OP000000002',
  '2023-11-30 7:20:44+07',
  '2023-12-14',
  'Arrhythmia', --aspirin
  38700
);

--insert exam medication

--1
INSERT INTO Exam_Medication(Doctor_Code, Patient_Number, Outpatient_Code, Exam_Timestamp, Medication_Code, Quantity)
VALUES(
  'D000000001',
  1,
  'OP000000001',
  '2022-01-08 7:05:25+07',
  'B01AC06_01', --aspirin
  28
);

--2
INSERT INTO Exam_Medication(Doctor_Code, Patient_Number, Outpatient_Code, Exam_Timestamp, Medication_Code, Quantity)
VALUES(
  'D000000003',
  2,
  'OP000000002',
  '2022-01-08 9:30:28+07',
  'N02BE01_01', --paracetamol
  20
);

INSERT INTO Exam_Medication(Doctor_Code, Patient_Number, Outpatient_Code, Exam_Timestamp, Medication_Code, Quantity)
VALUES(
  'D000000003',
  2,
  'OP000000002',
  '2022-01-08 9:30:28+07',
  'B01AC06_01', --aspirin
  10
);

--3
INSERT INTO Exam_Medication(Doctor_Code, Patient_Number, Outpatient_Code, Exam_Timestamp, Medication_Code, Quantity)
VALUES(
  'D000000003',
  3,
  'OP000000003',
  '2022-06-30 8:24:58+07',
  'N06DX02_01', --Gingko Biloba
  60
);

--4
INSERT INTO Exam_Medication(Doctor_Code, Patient_Number, Outpatient_Code, Exam_Timestamp, Medication_Code, Quantity)
VALUES(
  'D000000002',
  4,
  'OP000000004',
  '2022-06-30 8:24:58+07',
  'A02BC05_01', --Esomeprazole
  28
);

--5
INSERT INTO Exam_Medication(Doctor_Code, Patient_Number, Outpatient_Code, Exam_Timestamp, Medication_Code, Quantity)
VALUES(
  'D000000004',
  5,
  'OP000000005',
  '2022-11-25 11:05:27+07',
  'N06DX02_01', --Gingko Biloba
  14
);

--6
INSERT INTO Exam_Medication(Doctor_Code, Patient_Number, Outpatient_Code, Exam_Timestamp, Medication_Code, Quantity)
VALUES(
  'D000000004',
  6,
  'OP000000006',
  '2023-01-10 13:00:37+07',
  'R05DA09_01', --Danospan
  1
);

--2 second time
INSERT INTO Exam_Medication(Doctor_Code, Patient_Number, Outpatient_Code, Exam_Timestamp, Medication_Code, Quantity)
VALUES(
  'D000000001',
  2,
  'OP000000002',
  '2023-11-30 7:20:44+07',
  'B01AC06_01', --aspirin
  28
);

--insert inpatient

--1
INSERT INTO Inpatient(Patient_Number, Inpatient_Code)
VALUES(
  1,
  'IP000000001'
);

--7
INSERT INTO Inpatient(Patient_Number, Inpatient_Code)
VALUES(
  7,
  'IP000000002'
);

--8
INSERT INTO Inpatient(Patient_Number, Inpatient_Code)
VALUES(
  8,
  'IP000000003'
);

--9
INSERT INTO Inpatient(Patient_Number, Inpatient_Code)
VALUES(
  9,
  'IP000000004'
);

--10
INSERT INTO Inpatient(Patient_Number, Inpatient_Code)
VALUES(
  10,
  'IP000000005'
);

--insert admission, treatment, treatment medication

--1
INSERT INTO Admission(Patient_Number, Inpatient_Code, Admission_Timestamp, Nurse_Code, Diagnosis, Sick_Room, Recovered, Fee, Discharge_Timestamp)
VALUES(
  1,
  'IP000000001',
  '2022-01-22 6:30:55+07',
  'N000000001',
  'Arrhythmia, myocardial infarction',
  'B1-404',
  TRUE,
  5000000,
  '2022-02-22 11:15:23+07'
);

INSERT INTO Treatment(Doctor_Code, Patient_Number, Inpatient_Code, Admission_Timestamp, Start_Timestamp, End_Timestamp, Result_)
VALUES(
  'D000000001',
  1,
  'IP000000001',
  '2022-01-22 6:30:55+07',
  '2022-01-22 6:35:20+07',
  '2022-01-23 5:00:16+07',
  'Out of danger'
);

INSERT INTO Treatment(Doctor_Code, Patient_Number, Inpatient_Code, Admission_Timestamp, Start_Timestamp, End_Timestamp, Result_)
VALUES(
  'D000000005',
  1,
  'IP000000001',
  '2022-01-22 6:30:55+07',
  '2022-01-23 7:00:05+07',
  '2022-02-22 7:30:27+07',
  'Recovered, can be discharged'
);

INSERT INTO Treatment_Medication(Doctor_Code, Patient_Number, Inpatient_Code, Admission_Timestamp, Start_Timestamp, Medication_Code, Quantity)
VALUES(
  'D000000005',
  1,
  'IP000000001',
  '2022-01-22 6:30:55+07',
  '2022-01-23 7:00:05+07',
  'B01AC06_01',
  60
);

--7
INSERT INTO Admission(Patient_Number, Inpatient_Code, Admission_Timestamp, Nurse_Code, Diagnosis, Sick_Room, Recovered, Fee, Discharge_Timestamp)
VALUES(
  7,
  'IP000000002',
  '2022-05-18 7:00:46+07',
  'N000000004',
  'Zollinger-Ellison syndrome',
  'B2-212',
  TRUE,
  1200000,
  '2022-05-25 10:18:37+07'
);

INSERT INTO Treatment(Doctor_Code, Patient_Number, Inpatient_Code, Admission_Timestamp, Start_Timestamp, End_Timestamp, Result_)
VALUES(
  'D000000002',
  7,
  'IP000000002',
  '2022-05-18 7:00:46+07',
  '2022-05-18 7:15:24+07',
  '2022-05-25 10:18:37+07',
  'Recovered, can be discharged but need re-examination after 1 week'
);

INSERT INTO Treatment_Medication(Doctor_Code, Patient_Number, Inpatient_Code, Admission_Timestamp, Start_Timestamp, Medication_Code, Quantity)
VALUES(
  'D000000002',
  7,
  'IP000000002',
  '2022-05-18 7:00:46+07',
  '2022-05-18 7:15:24+07',
  'A02BC05_01',
  14
);

--8
INSERT INTO Admission(Patient_Number, Inpatient_Code, Admission_Timestamp, Nurse_Code, Diagnosis, Sick_Room, Recovered, Fee, Discharge_Timestamp)
VALUES(
  8,
  'IP000000003',
  '2022-05-18 8:25:36+07',
  'N000000003',
  'Depressive disorder',
  'B3-305',
  TRUE,
  10000000,
  '2022-08-22 13:30:19+07'
);

INSERT INTO Treatment(Doctor_Code, Patient_Number, Inpatient_Code, Admission_Timestamp, Start_Timestamp, End_Timestamp, Result_)
VALUES(
  'D000000003',
  8,
  'IP000000003',
  '2022-05-18 8:25:36+07',
  '2022-05-18 8:30:55+07',
  '2022-08-22 10:00:00+07',
  'Recovered, can be discharged and take medicine at home'
);

INSERT INTO Treatment_Medication(Doctor_Code, Patient_Number, Inpatient_Code, Admission_Timestamp, Start_Timestamp, Medication_Code, Quantity)
VALUES(
  'D000000003',
  8,
  'IP000000003',
  '2022-05-18 8:25:36+07',
  '2022-05-18 8:30:55+07',
  'N06DX02_01',
  192
);

--9
INSERT INTO Admission(Patient_Number, Inpatient_Code, Admission_Timestamp, Nurse_Code, Diagnosis, Sick_Room, Recovered, Fee, Discharge_Timestamp)
VALUES(
  9,
  'IP000000004',
  '2023-07-11 6:17:29+07',
  'N000000004',
  'Gastric ulcers',
  'B2-311',
  TRUE,
  2500000,
  '2023-07-25 15:30:44+07'
);

INSERT INTO Treatment(Doctor_Code, Patient_Number, Inpatient_Code, Admission_Timestamp, Start_Timestamp, End_Timestamp, Result_)
VALUES(
  'D000000002',
  9,
  'IP000000004',
  '2023-07-11 6:17:29+07',
  '2023-07-11 6:30:33+07',
  '2023-07-25 12:00:27+07',
  'Recovered, can be discharged'
);

INSERT INTO Treatment_Medication(Doctor_Code, Patient_Number, Inpatient_Code, Admission_Timestamp, Start_Timestamp, Medication_Code, Quantity)
VALUES(
  'D000000002',
  9,
  'IP000000004',
  '2023-07-11 6:17:29+07',
  '2023-07-11 6:30:33+07',
  'N02BE01_01',
  4
);

INSERT INTO Treatment_Medication(Doctor_Code, Patient_Number, Inpatient_Code, Admission_Timestamp, Start_Timestamp, Medication_Code, Quantity)
VALUES(
  'D000000002',
  9,
  'IP000000004',
  '2023-07-11 6:17:29+07',
  '2023-07-11 6:30:33+07',
  'A02BC05_01',
  28
);

--10
INSERT INTO Admission(Patient_Number, Inpatient_Code, Admission_Timestamp, Nurse_Code, Diagnosis, Sick_Room, Fee)
VALUES(
  10,
  'IP000000005',
  '2023-11-23 9:09:21+07',
  'N000000005',
  'Hemiplegia',
  'B4-123',
  1000000
);

INSERT INTO Treatment(Doctor_Code, Patient_Number, Inpatient_Code, Admission_Timestamp, Start_Timestamp, Result_)
VALUES(
  'D000000004',
  10,
  'IP000000005',
  '2023-11-23 9:09:21+07',
  '2023-11-23 9:15:49+07',
  'Get better thanks to acupuncture'
);

--8 second time
INSERT INTO Admission(Patient_Number, Inpatient_Code, Admission_Timestamp, Nurse_Code, Diagnosis, Sick_Room, Fee)
VALUES(
  8,
  'IP000000003',
  '2023-12-01 11:44:51+07',
  'N000000003',
  'Depressive disorder',
  'B3-224',
  500000
);

INSERT INTO Treatment(Doctor_Code, Patient_Number, Inpatient_Code, Admission_Timestamp, Start_Timestamp, Result_)
VALUES(
  'D000000003',
  8,
  'IP000000003',
  '2023-12-01 11:44:51+07',
  '2023-01-12 13:00:16+07',
  'Still need observation'
);

INSERT INTO Treatment_Medication(Doctor_Code, Patient_Number, Inpatient_Code, Admission_Timestamp, Start_Timestamp, Medication_Code, Quantity)
VALUES(
  'D000000003',
  8,
  'IP000000003',
  '2023-12-01 11:44:51+07',
  '2023-01-12 13:00:16+07',
  'N06DX02_01',
  10
);