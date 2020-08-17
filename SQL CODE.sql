

--identity (seed,increment)
-- CAST Syntax: CAST ( expression AS data_type [ ( length ) ] )  
-- RIGHT ( character_expression to display , integer_expression till how many character )  

--------------------------------------LAB FINAL------------------------------------------
--------------------------------------Asfand Yar Khan------------------------------------
--note all foreign keys assignments are at the end of the file.
create table Deparment 
(
d_Depn nvarchar(25) not null primary key,
d_Depl nvarchar(25),
d_Depf nvarchar(25)
);


create table All_Doctors
(
a_d_tempID int identity (100,1) not null,
a_d_ID_NO as ('Dr' + cast(a_d_tempID as varchar (3))) persisted not null primary key,
a_d_Depname nvarchar(25) 
);


create table Registered_Doc(
r_d_tempID int identity (100,1) not null,
r_d_ID_NO as ('Dr' + r_d_tempID) primary key,
r_d_name nvarchar(25),
r_d_qualification nvarchar(25),
r_d_address nvarchar(25),
r_d_phone nvarchar(12),
r_d_salary nvarchar(25),
r_d_Date_of_join date
);


create table Patient (
p_TempID int identity (1,1) not null,
p_ID as ('PT'+ p_dname + p_depname +left(p_city,3) + ( +right('20' +Cast (p_TempID as varchar (3)),4))),
p_picture varbinary(max),
p_cnic nvarchar(25),
p_gender nvarchar(25),
p_DOB date,
p_bloodgroup nvarchar(5),
p_firstname nvarchar(25),
p_lastname nvarchar(25),
p_POB nvarchar(25),
p_father_or_phusband nvarchar(25),
p_present_address nvarchar(25),
p_permenant_address nvarchar(25),
p_district nvarchar(25),
p_tehsil nvarchar(25),
p_city nvarchar(25),
p_state nvarchar(25),
p_education nvarchar(25),
p_housecontactno nvarchar(12),
p_mobile nvarchar(12),
p_email nvarchar(50),
p_cast nvarchar(25),
p_aname nvarchar(25),
p_alastname nvarchar(25),
p_afather_or_pahusband nvarchar(25),
p_abloodgroup nvarchar(5),
p_acontact nvarchar(12),
p_dname nvarchar(25),
p_depname nvarchar(25),
p_ddiagnosis nvarchar(25)
);


create table patientcheckup
(
pc_ID nvarchar(59) ,
pc_did_no varchar(5),
pc_DOCheckUp date,
);



create table admitpatient
(
ap_ID nvarchar(59) not null primary key,
ap_DOadmission date,
ap_initial_condition nvarchar(25),
ap_diagnosis nvarchar(25),
ap_did_no varchar(5),
ap_attendant_name nvarchar(25),
ap_room_no nvarchar(25),
ap_mode_of_payment nvarchar(25),
ap_advance_payment nvarchar(25)
);


create table signs_symptoms
(
s_s_PID nvarchar(59) not null primary key,
s_s_DryCough bit,
s_s_Fever bit,
s_s_ChestPain bit,
s_s_Shortness_of_breath bit,
s_s_Fatigue bit,
s_s_Vomiting bit,
s_s_Headace bit,
s_s_Loss_of_smell bit,
s_s_Loss_of_taste bit,
s_s_Diarrhea bit,
);


create table recoveredpatient
(
rp_PID nvarchar(59) not null primary key,
rp_dname nvarchar(25),
rp_DOA date,
rp_DOD date,
rp_willing_to_donate bit
);

-------------------------------------Data added ----------------------------------------------


insert into Deparment (d_Depn,d_Depl,d_Depf) values ('Orthopedic','5th floor','Joint Reconstruction');
insert into Deparment (d_Depn,d_Depl,d_Depf) values ('Pathology','6th floor','Hematopathology');
insert into Deparment (d_Depn,d_Depl,d_Depf) values ('Emergency','7th floor','Trauma');
insert into Deparment (d_Depn,d_Depl,d_Depf) values ('Dental','8th floor','Endodontist');
insert into Deparment (d_Depn,d_Depl,d_Depf) values ('Gynecology','9th floor','Reproductive Endocrinology and Infertility');
insert into Deparment (d_Depn,d_Depl,d_Depf) values ('Anesthetics','1st floor','Cardiothoracic Anesthesia');
insert into Deparment (d_Depn,d_Depl,d_Depf) values ('I.C.U.','2nd floor','Critical care nursing');
insert into Deparment (d_Depn,d_Depl,d_Depf) values ('Blood Bank','3rd floor','Hematology');
insert into Deparment (d_Depn,d_Depl,d_Depf) values ('Operation Theater','4th floor','Trauma surgery');
insert into Deparment (d_Depn,d_Depl,d_Depf) values ('Laboratory','Ground floor','Surgical Pathology');
insert into Deparment (d_Depn,d_Depl,d_Depf) values ('M.R.I.','Ground floor','Radiology');
insert into Deparment (d_Depn,d_Depl,d_Depf) values ('Neurology','10th floor','Autonomic Disorders');
insert into Deparment (d_Depn,d_Depl,d_Depf) values ('Cardiology','6th floor','Pediatric Cardiologist');
insert into Deparment (d_Depn,d_Depl,d_Depf) values ('Cancer Department','8th floor','Oncology');
insert into Deparment (d_Depn,d_Depl,d_Depf) values ('Corpse','Ground floor','Forensic pathology');
insert into Deparment (d_Depn,d_Depl,d_Depf) values ('COVID-19 Isolation Ward','Ground floor','Ventilators');


insert into All_Doctors (a_d_Depname) values ('Anesthetics');
insert into All_Doctors (a_d_Depname) values ('Blood Bank');
insert into All_Doctors (a_d_Depname) values ('Cancer Department');
insert into All_Doctors (a_d_Depname) values ('Cardiology');
insert into All_Doctors (a_d_Depname) values ('Corpse');
insert into All_Doctors (a_d_Depname) values ('COVID-19 Isolation Ward');
insert into All_Doctors (a_d_Depname) values ('Dental');
insert into All_Doctors (a_d_Depname) values ('Pathology');
insert into All_Doctors (a_d_Depname) values ('Emergency');
insert into All_Doctors (a_d_Depname) values ('I.C.U.');
insert into All_Doctors (a_d_Depname) values ('Laboratory');
insert into All_Doctors (a_d_Depname) values ('M.R.I.');
insert into All_Doctors (a_d_Depname) values ('Neurology');
insert into All_Doctors (a_d_Depname) values ('Operation Theater');
insert into All_Doctors (a_d_Depname) values ('Orthopedic');


insert into Registered_Doc (r_d_name,r_d_qualification,r_d_address,r_d_phone,r_d_salary,r_d_Date_of_join) values ('Ahmed','Bachelor of Medicine, Bachelor of Surgery','8 W Cerritos Ave #54','504-621-8927','150000','2020-01-01');
insert into Registered_Doc (r_d_name,r_d_qualification,r_d_address,r_d_phone,r_d_salary,r_d_Date_of_join) values ('Amanda','Doctor of Medicine','34 Center St','856-636-8749','84500','2013-04-05');
insert into Registered_Doc (r_d_name,r_d_qualification,r_d_address,r_d_phone,r_d_salary,r_d_Date_of_join) values ('Alina','Doctor of Osteopathic Medicine (DO)','7 W Jackson Blvd','907-385-4412','488411','2001-12-12');
insert into Registered_Doc (r_d_name,r_d_qualification,r_d_address,r_d_phone,r_d_salary,r_d_Date_of_join) values ('Alfred','Doctor of Medicine by research (MD(Res), DM)','2371 Jerrold Ave','513-570-1893','458742','1999-05-04');
insert into Registered_Doc (r_d_name,r_d_qualification,r_d_address,r_d_phone,r_d_salary,r_d_Date_of_join) values ('Bruce','Doctor of Philosophy (PhD, DPhil)','98 Connecticut Ave Nw','419-503-2484','321546','2001-09-11');
insert into Registered_Doc (r_d_name,r_d_qualification,r_d_address,r_d_phone,r_d_salary,r_d_Date_of_join) values ('Ballack','Master of Clinical Medicine (MCM)','69734 E Carrillo St','773-573-6914','48458','2005-08-05');
insert into Registered_Doc (r_d_name,r_d_qualification,r_d_address,r_d_phone,r_d_salary,r_d_Date_of_join) values ('Carrick','Master of Medical Science (MMSc, MMedSc)','1 State Route 27','408-752-3500','88455','2006-06-15');
insert into Registered_Doc (r_d_name,r_d_qualification,r_d_address,r_d_phone,r_d_salary,r_d_Date_of_join) values ('Crosswell','Master of Medicine (MM, MMed)','394 Manchester Blvd','605-414-2147','335484','2008-06-08');
insert into Registered_Doc (r_d_name,r_d_qualification,r_d_address,r_d_phone,r_d_salary,r_d_Date_of_join) values ('Donald','Master of Philosophy (MPhil)','86 Nw 66th St #8673','410-655-8723','335484','2009-08-19');
insert into Registered_Doc (r_d_name,r_d_qualification,r_d_address,r_d_phone,r_d_salary,r_d_Date_of_join) values ('Epstein','Master of Surgery (MS, MSurg, MChir, MCh, ChM, CM)','74874 Atlantic Ave','215-874-1229','448424','2010-08-19');
insert into Registered_Doc (r_d_name,r_d_qualification,r_d_address,r_d_phone,r_d_salary,r_d_Date_of_join) values ('Fiona','Master of Science in Medicine or Surgery (MSc)','6649 N Blue Gum St','631-335-3414','842148','2013-06-04');
insert into Registered_Doc (r_d_name,r_d_qualification,r_d_address,r_d_phone,r_d_salary,r_d_Date_of_join) values ('Gerald','Doctor of Clinical Medicine (DCM)','4 B Blue Ridge Blvd','310-498-5651','44654','2013-07-05');
insert into Registered_Doc (r_d_name,r_d_qualification,r_d_address,r_d_phone,r_d_salary,r_d_Date_of_join) values ('Jason','Doctor of Clinical Surgery (DClinSurg)','8 W Cerritos Ave #54','440-780-8425','84648','2020-01-05');
insert into Registered_Doc (r_d_name,r_d_qualification,r_d_address,r_d_phone,r_d_salary,r_d_Date_of_join) values ('Khalid','Doctor of Medical Science (DMSc, DMedSc)','2742 Distribution Way','956-537-6195','888482','2018-04-05');
insert into Registered_Doc (r_d_name,r_d_qualification,r_d_address,r_d_phone,r_d_salary,r_d_Date_of_join) values ('Leonardo','Doctor of Surgery (DS, DSurg)','6980 Dorsett Rd','602-277-4385','64885','2016-08-08');


insert into Patient (p_picture,p_cnic,p_gender,p_DOB,p_bloodgroup,p_firstname,p_lastname,p_POB,p_father_or_phusband,p_present_address,p_permenant_address,p_district,p_tehsil,p_city,p_state,p_education,p_housecontactno,p_mobile,p_email,p_cast,
p_aname,p_alastname,p_afather_or_pahusband,p_abloodgroup,p_acontact, 
p_dname,p_depname,p_ddiagnosis) values
((SELECT * FROM OPENROWSET(BULK N'C:\Users\Asfan\OneDrive\Pictures\DBMS LAB FINAL\download (1).jfif', SINGLE_BLOB)as t1),'89472-9976583-7','Male','1995-05-07','B+','Ching','Lee','Tokyo','Jackie','63 E Aurora Dr','61556 W 20th Ave','King','Chinatown','Seattle','WA','BS Psychology','206-711-6498','206-395-6284','jbiddy@yahoo.com','Jutt',
'Lai','Brittni','Raylene','AB-','415-423-3294',
'Ahmed','Anesthetics','Asprin');
insert into Patient (p_picture,p_cnic,p_gender,p_DOB,p_bloodgroup,p_firstname,p_lastname,p_POB,p_father_or_phusband,p_present_address,p_permenant_address,p_district,p_tehsil,p_city,p_state,p_education,p_housecontactno,p_mobile,p_email,p_cast,
p_aname,p_alastname,p_afather_or_pahusband,p_abloodgroup,p_acontact, 
p_dname,p_depname,p_ddiagnosis) values
((SELECT * FROM OPENROWSET(BULK N'C:\Users\Asfan\OneDrive\Pictures\DBMS LAB FINAL\download (2).jfif', SINGLE_BLOB)as t1),'12372-9935862-8','Male','1965-11-21','O+','Leinenbach','Joanna','Lake Worth','Caprice','90177 N 55th Ave','25 Se 176th Pl','Laslo','San Rafael','	Fort Worth','TX','BS English','601-567-5386','601-637-5479','tasia_andreason@yahoo.com','Gujjar',
'Lilli','Scriven','Lietz','B-','248-980-6904',
'Amanda','Anesthetics','Principal diagnosis');
insert into Patient (p_picture,p_cnic,p_gender,p_DOB,p_bloodgroup,p_firstname,p_lastname,p_POB,p_father_or_phusband,p_present_address,p_permenant_address,p_district,p_tehsil,p_city,p_state,p_education,p_housecontactno,p_mobile,p_email,p_cast,
p_aname,p_alastname,p_afather_or_pahusband,p_abloodgroup,p_acontact, 
p_dname,p_depname,p_ddiagnosis) values
((SELECT * FROM OPENROWSET(BULK N'C:\Users\Asfan\OneDrive\Pictures\DBMS LAB FINAL\download (3).jfif', SINGLE_BLOB)as t1),'66672-9696983-9','Male','1975-06-07','A+','Quentin','Shonda','Miami','Jeanice','63 Smith Ln #8343','4 S Washington Ave','Ronda','Madera','Seattle','WA','BS Maths','201-772-4377','616-568-4113','hubert@walthall.org','Satti',
'Goldie','Hauenstein','Perigo','A-','216-923-3715',
'Alina','Blood Bank','Admitting diagnosis');
insert into Patient (p_picture,p_cnic,p_gender,p_DOB,p_bloodgroup,p_firstname,p_lastname,p_POB,p_father_or_phusband,p_present_address,p_permenant_address,p_district,p_tehsil,p_city,p_state,p_education,p_housecontactno,p_mobile,p_email,p_cast,
p_aname,p_alastname,p_afather_or_pahusband,p_abloodgroup,p_acontact, 
p_dname,p_depname,p_ddiagnosis) values
((SELECT * FROM OPENROWSET(BULK N'C:\Users\Asfan\OneDrive\Pictures\DBMS LAB FINAL\download (4).jfif', SINGLE_BLOB)as t1),'82222-4848583-7','Male','1985-05-16','OB+','Lapage','Claucherty','Miami','Villanueva','11360 S Halsted St','27846 Lafayette Ave','Raindeer','Mammoth','Austin','TX','BS Computer','201-969-7063','201-920-9002','arthur.farrow@yahoo.com','Pindi',
'Upthegrove','Raul','Sarah','A-','770-531-2842',
'Alfred','Cancer Department','Differential diagnosis');
insert into Patient (p_picture,p_cnic,p_gender,p_DOB,p_bloodgroup,p_firstname,p_lastname,p_POB,p_father_or_phusband,p_present_address,p_permenant_address,p_district,p_tehsil,p_city,p_state,p_education,p_housecontactno,p_mobile,p_email,p_cast,
p_aname,p_alastname,p_afather_or_pahusband,p_abloodgroup,p_acontact, 
p_dname,p_depname,p_ddiagnosis) values
((SELECT * FROM OPENROWSET(BULK N'C:\Users\Asfan\OneDrive\Pictures\DBMS LAB FINAL\download (5).jfif', SINGLE_BLOB)as t1),'78572-7756583-4','Male','1998-12-12','B+','Cecil','Cassi','Hatfield','Galam','1 N San Saba','1 Century Park E','Pwincess','Manhattan','San Jose','CA','BS Psychology','901-640-9178','901-869-4314','vberlanga@berlanga.com','Arain',
'Judy','Aquas','Niles','B-','269-431-9464',
'Bruce','Corpse','Diagnostic criteria');
insert into Patient (p_picture,p_cnic,p_gender,p_DOB,p_bloodgroup,p_firstname,p_lastname,p_POB,p_father_or_phusband,p_present_address,p_permenant_address,p_district,p_tehsil,p_city,p_state,p_education,p_housecontactno,p_mobile,p_email,p_cast,
p_aname,p_alastname,p_afather_or_pahusband,p_abloodgroup,p_acontact, 
p_dname,p_depname,p_ddiagnosis) values
((SELECT * FROM OPENROWSET(BULK N'C:\Users\Asfan\OneDrive\Pictures\DBMS LAB FINAL\download.jfif', SINGLE_BLOB)as t1),'12851-9354583-1','Female','2005-08-16','B+','Adell','Lipkin','Salt Lake','Rowling','51120 State Route 18','78 Maryland Dr #146','UWU','Alpine','Dallas','TX','BS Accounting','303-997-7760','303-402-1940','billye_miro@cox.net','Rajput',
'Yvonne','Linus','John','B+','973-976-8627',
'Ballack','COVID-19 Isolation Ward','Nursing diagnosis');
insert into Patient (p_picture,p_cnic,p_gender,p_DOB,p_bloodgroup,p_firstname,p_lastname,p_POB,p_father_or_phusband,p_present_address,p_permenant_address,p_district,p_tehsil,p_city,p_state,p_education,p_housecontactno,p_mobile,p_email,p_cast,
p_aname,p_alastname,p_afather_or_pahusband,p_abloodgroup,p_acontact, 
p_dname,p_depname,p_ddiagnosis) values
((SELECT * FROM OPENROWSET(BULK N'C:\Users\Asfan\OneDrive\Pictures\DBMS LAB FINAL\flat,750x1000,075,f.jpg', SINGLE_BLOB)as t1),'81112-9582163-7','Male','1995-12-02','A+','Lonna','Mclaird','South Bend','Jeanty','55713 Lake City','6201 S Nevada Ave','Queen','Bassett','San Diego','CA','High School','626-293-7678','626-866-2339','glenna_slayton@cox.net','Sheikh',
'Kristeen','Jenelle','Regusters','A-','813-932-8715',
'Carrick','Dental','Remote diagnosis');
insert into Patient (p_picture,p_cnic,p_gender,p_DOB,p_bloodgroup,p_firstname,p_lastname,p_POB,p_father_or_phusband,p_present_address,p_permenant_address,p_district,p_tehsil,p_city,p_state,p_education,p_housecontactno,p_mobile,p_email,p_cast,
p_aname,p_alastname,p_afather_or_pahusband,p_abloodgroup,p_acontact, 
p_dname,p_depname,p_ddiagnosis) values
((SELECT * FROM OPENROWSET(BULK N'C:\Users\Asfan\OneDrive\Pictures\DBMS LAB FINAL\images (1).jfif', SINGLE_BLOB)as t1),'98765-1234583-6','Male','2000-10-27','A-','Kenneth','Alline','Orlando','Eanes','75698 N Fiesta Blvd','34 Raritan Center Pky','Port','Brittan','San Antonio','TX','Middle School','206-711-6498','901-901-4726','mitzie_hudnall@yahoo.com','Pinacolada',
'Salome','Lacovara','Keetch','B-','215-979-8776',
'Crosswell','Pathology','Self-diagnosis');
insert into Patient (p_picture,p_cnic,p_gender,p_DOB,p_bloodgroup,p_firstname,p_lastname,p_POB,p_father_or_phusband,p_present_address,p_permenant_address,p_district,p_tehsil,p_city,p_state,p_education,p_housecontactno,p_mobile,p_email,p_cast,
p_aname,p_alastname,p_afather_or_pahusband,p_abloodgroup,p_acontact, 
p_dname,p_depname,p_ddiagnosis) values
((SELECT * FROM OPENROWSET(BULK N'C:\Users\Asfan\OneDrive\Pictures\DBMS LAB FINAL\images (2).jfif', SINGLE_BLOB)as t1),'95137-4569883-7','Male','1977-07-17','AB-','Sharika','Nu','Harrison','Mcnease','88 Sw 28th Ter','32820 Corkwood Rd','Newmp','Canyon','Philadelphia','PA','BS Art','204-711-6498','773-857-2231','bernardine_rodefer@yahoo.com','Baloch',
'Theodora','Matthew','Neither','AB-','952-651-7597',
'Donald','Emergency','Computer-aided diagnosis');
insert into Patient (p_picture,p_cnic,p_gender,p_DOB,p_bloodgroup,p_firstname,p_lastname,p_POB,p_father_or_phusband,p_present_address,p_permenant_address,p_district,p_tehsil,p_city,p_state,p_education,p_housecontactno,p_mobile,p_email,p_cast,
p_aname,p_alastname,p_afather_or_pahusband,p_abloodgroup,p_acontact, 
p_dname,p_depname,p_ddiagnosis) values
((SELECT * FROM OPENROWSET(BULK N'C:\Users\Asfan\OneDrive\Pictures\DBMS LAB FINAL\images (3).jfif', SINGLE_BLOB)as t1),'81232-9321483-7','Male','1998-05-15','B-','Daniel','Lee','Trenton','Comnick','7 Flowers Rd #403','4 Iwaena St','Broadway','Chowchilla','Phoenix','AZ ','BS Music','509-755-5393','509-847-3352','staci_schmaltz@aol.com','Malik',
'Noah','Kalafatis','Sweigar','B+','701-898-2154',
'Epstein','I.C.U.','Overdiagnosis');
insert into Patient (p_picture,p_cnic,p_gender,p_DOB,p_bloodgroup,p_firstname,p_lastname,p_POB,p_father_or_phusband,p_present_address,p_permenant_address,p_district,p_tehsil,p_city,p_state,p_education,p_housecontactno,p_mobile,p_email,p_cast,
p_aname,p_alastname,p_afather_or_pahusband,p_abloodgroup,p_acontact, 
p_dname,p_depname,p_ddiagnosis) values
((SELECT * FROM OPENROWSET(BULK N'C:\Users\Asfan\OneDrive\Pictures\DBMS LAB FINAL\images (4).jfif', SINGLE_BLOB)as t1),'99972-9322583-2','Male','1994-07-04','O-','Tegan','Arceo','Monroe Township','Breland','35 E Main St #43','39 Franklin Ave','Langley','Panoche','Houston','TX','BS Film','410-429-4888','410-890-7866','nichelle_meteer@meteer.com','Pathan',
'Casie','Junita','Stoltzman','A+','775-638-9963',
'Fiona','Laboratory','Wastebasket diagnosis');
insert into Patient (p_picture,p_cnic,p_gender,p_DOB,p_bloodgroup,p_firstname,p_lastname,p_POB,p_father_or_phusband,p_present_address,p_permenant_address,p_district,p_tehsil,p_city,p_state,p_education,p_housecontactno,p_mobile,p_email,p_cast,
p_aname,p_alastname,p_afather_or_pahusband,p_abloodgroup,p_acontact, 
p_dname,p_depname,p_ddiagnosis) values
((SELECT * FROM OPENROWSET(BULK N'C:\Users\Asfan\OneDrive\Pictures\DBMS LAB FINAL\images (6).jfif', SINGLE_BLOB)as t1),'66472-9988443-5','Female','1999-02-17','OB-','Nan','Ruthann','Kerrville','Keener','50126 N Plankinton Ave','92 Broadway','Greenwood','Parlier','Chicago','IL','BS Business','973-605-6492','973-860-8610','jrhoden@yahoo.com','Mughal',
'Reena','Maisto','Mallett','A+','212-870-1286',
'Gerald','M.R.I.','Retrospective diagnosis');
insert into Patient (p_picture,p_cnic,p_gender,p_DOB,p_bloodgroup,p_firstname,p_lastname,p_POB,p_father_or_phusband,p_present_address,p_permenant_address,p_district,p_tehsil,p_city,p_state,p_education,p_housecontactno,p_mobile,p_email,p_cast,
p_aname,p_alastname,p_afather_or_pahusband,p_abloodgroup,p_acontact, 
p_dname,p_depname,p_ddiagnosis) values
((SELECT * FROM OPENROWSET(BULK N'C:\Users\Asfan\OneDrive\Pictures\DBMS LAB FINAL\images (7).jfif', SINGLE_BLOB)as t1),'49322-9446563-7','Male','1975-01-01','AB+','LILI','Jacobs','Madison','Palia','16452 Greenwich St','72 Beechwood Ter','Queer','El Monte','Los Angeles','CA','BS Law','562-719-7922','562-579-6900','eden_jayson@yahoo.com','Reds',
'Tawil','Pontoriero','Cathrine','B+','212-745-6948',
'Jason','Neurology','Etiology (medicine)');
insert into Patient (p_picture,p_cnic,p_gender,p_DOB,p_bloodgroup,p_firstname,p_lastname,p_POB,p_father_or_phusband,p_present_address,p_permenant_address,p_district,p_tehsil,p_city,p_state,p_education,p_housecontactno,p_mobile,p_email,p_cast,
p_aname,p_alastname,p_afather_or_pahusband,p_abloodgroup,p_acontact, 
p_dname,p_depname,p_ddiagnosis) values
((SELECT * FROM OPENROWSET(BULK N'C:\Users\Asfan\OneDrive\Pictures\DBMS LAB FINAL\images (8).jfif', SINGLE_BLOB)as t1),'89472-7993653-7','Male','1984-12-07','B+','Refugia','Yori','Garden City','Paskin','3338 A Lockport Pl #6','18 Coronado Ave #563','Prince','Ross','New York City','NY','BS History','732-628-9909','732-617-5310','lynelle_auber@gmail.com','Raja',
'Kristeen','Tresa','Sweely','O+','314-359-9566',
'Khalid','Operation Theater','Nosology');
insert into Patient (p_picture,p_cnic,p_gender,p_DOB,p_bloodgroup,p_firstname,p_lastname,p_POB,p_father_or_phusband,p_present_address,p_permenant_address,p_district,p_tehsil,p_city,p_state,p_education,p_housecontactno,p_mobile,p_email,p_cast,
p_aname,p_alastname,p_afather_or_pahusband,p_abloodgroup,p_acontact, 
p_dname,p_depname,p_ddiagnosis) values
((SELECT * FROM OPENROWSET(BULK N'C:\Users\Asfan\OneDrive\Pictures\DBMS LAB FINAL\images.jfif', SINGLE_BLOB)as t1),'89472-9666522-1','Male','1980-02-04','B+','Gilma','Asar','Kearny','Thaddeus','5 Washington St #68','2 W Grand Ave','Lawrance','Saddleback Valley','Birmingham','CA','BS Gender studies','973-210-3994','973-491-8723','merissa.tomblin@gmail.com','Gujjar',
'Jenelle','Renea','Monterrubio','O-','770-679-4752',
'Leonardo','Orthopedic','Prognosis');


insert into patientcheckup (pc_ID,pc_did_no,pc_DOCheckUp) values ('PTAhmedAnestheticsSea001','Dr100','2020-05-12');
insert into patientcheckup (pc_ID,pc_did_no,pc_DOCheckUp) values ('PTAmandaAnesthetics Fo002','Dr101','2020-08-01');
insert into patientcheckup (pc_ID,pc_did_no,pc_DOCheckUp) values ('PTAlinaBlood BankSea003','Dr102','2020-01-02');
insert into patientcheckup (pc_ID,pc_did_no,pc_DOCheckUp) values ('PTAlfredCancer DepartmentAus004','Dr103','2020-02-06');
insert into patientcheckup (pc_ID,pc_did_no,pc_DOCheckUp) values ('PTBruceCorpseSan005','Dr104','2020-01-04');
insert into patientcheckup (pc_ID,pc_did_no,pc_DOCheckUp) values ('PTBallackCOVID-19 Isolation WardDal006','Dr105','2020-03-11');
insert into patientcheckup (pc_ID,pc_did_no,pc_DOCheckUp) values ('PTCarrickDentalSan007','Dr106','2020-02-08');
insert into patientcheckup (pc_ID,pc_did_no,pc_DOCheckUp) values ('PTCrosswellPathologySan008','Dr107','2020-05-16');
insert into patientcheckup (pc_ID,pc_did_no,pc_DOCheckUp) values ('PTDonaldEmergencyPhi009','Dr108','2020-09-19');
insert into patientcheckup (pc_ID,pc_did_no,pc_DOCheckUp) values ('PTEpsteinI.C.U.Pho0010','Dr109','2020-07-17');
insert into patientcheckup (pc_ID,pc_did_no,pc_DOCheckUp) values ('PTFionaLaboratoryHou0011','Dr110','2020-04-20');
insert into patientcheckup (pc_ID,pc_did_no,pc_DOCheckUp) values ('PTGeraldM.R.I.Chi0012','Dr111','2020-04-23');
insert into patientcheckup (pc_ID,pc_did_no,pc_DOCheckUp) values ('PTJasonNeurologyLos0013','Dr112','2020-02-3');
insert into patientcheckup (pc_ID,pc_did_no,pc_DOCheckUp) values ('PTKhalidOperation TheaterNew0014','Dr113','2020-01-13');
insert into patientcheckup (pc_ID,pc_did_no,pc_DOCheckUp) values ('PTLeonardoOrthopedicBir0015','Dr114','2020-01-11');


insert into admitpatient (ap_ID,ap_DOadmission,ap_initial_condition,ap_diagnosis,ap_did_no,ap_attendant_name,ap_room_no,ap_mode_of_payment,ap_advance_payment) values 
('PTAhmedAnestheticsSea001','2020-05-12','Trauma','Asprin','Dr100','Lai','005','Cash','Yes');
insert into admitpatient (ap_ID,ap_DOadmission,ap_initial_condition,ap_diagnosis,ap_did_no,ap_attendant_name,ap_room_no,ap_mode_of_payment,ap_advance_payment) values 
('PTAmandaAnesthetics Fo002','2020-02-06','Head injury','Differential diagnosis','Dr101','Upthegrove','025','Card','Yes');
insert into admitpatient (ap_ID,ap_DOadmission,ap_initial_condition,ap_diagnosis,ap_did_no,ap_attendant_name,ap_room_no,ap_mode_of_payment,ap_advance_payment) values 
('PTAlinaBlood BankSea003','2020-01-02','Leg break','Admitting diagnosis','Dr102','Goldie','015','Card','Yes');
insert into admitpatient (ap_ID,ap_DOadmission,ap_initial_condition,ap_diagnosis,ap_did_no,ap_attendant_name,ap_room_no,ap_mode_of_payment,ap_advance_payment) values 
('PTAlfredCancer DepartmentAus004','2020-08-01','Car accident','Principal diagnosis','Dr103','Lilli','035','Cheque','Pending');
insert into admitpatient (ap_ID,ap_DOadmission,ap_initial_condition,ap_diagnosis,ap_did_no,ap_attendant_name,ap_room_no,ap_mode_of_payment,ap_advance_payment) values 
('PTBruceCorpseSan005','2020-03-11','Trauma','Nursing diagnosis','Dr104','Yvonne','012','Card','Declined');
insert into admitpatient (ap_ID,ap_DOadmission,ap_initial_condition,ap_diagnosis,ap_did_no,ap_attendant_name,ap_room_no,ap_mode_of_payment,ap_advance_payment) values 
('PTBallackCOVID-19 Isolation WardDal006','2020-01-04','Fever','Diagnostic criteria','Dr105','Judy','010','Cash','Yes');
insert into admitpatient (ap_ID,ap_DOadmission,ap_initial_condition,ap_diagnosis,ap_did_no,ap_attendant_name,ap_room_no,ap_mode_of_payment,ap_advance_payment) values 
('PTCarrickDentalSan007','2020-02-08','Fever','Remote diagnosis','Dr106','Kristeen','003','Cash','Yes');
insert into admitpatient (ap_ID,ap_DOadmission,ap_initial_condition,ap_diagnosis,ap_did_no,ap_attendant_name,ap_room_no,ap_mode_of_payment,ap_advance_payment) values 
('PTCrosswellPathologySan008','2020-05-16','Depression','Self-diagnosis','Dr107','Salome','007','Cash','Yes');
insert into admitpatient (ap_ID,ap_DOadmission,ap_initial_condition,ap_diagnosis,ap_did_no,ap_attendant_name,ap_room_no,ap_mode_of_payment,ap_advance_payment) values 
('PTDonaldEmergencyPhi009','2020-09-19','Trauma','Computer-aided diagnosis','Dr108','Theodora','017','Cheque','Pending');
insert into admitpatient (ap_ID,ap_DOadmission,ap_initial_condition,ap_diagnosis,ap_did_no,ap_attendant_name,ap_room_no,ap_mode_of_payment,ap_advance_payment) values 
('PTEpsteinI.C.U.Pho0010','2020-07-17','Psychological Damage','Overdiagnosis','Dr109','Noah','033','Card','Yes');
insert into admitpatient (ap_ID,ap_DOadmission,ap_initial_condition,ap_diagnosis,ap_did_no,ap_attendant_name,ap_room_no,ap_mode_of_payment,ap_advance_payment) values 
('PTFionaLaboratoryHou0011','2020-04-20','Nerve Damage','Wastebasket diagnosis','Dr110','Casie','011','Cash','Yes');
insert into admitpatient (ap_ID,ap_DOadmission,ap_initial_condition,ap_diagnosis,ap_did_no,ap_attendant_name,ap_room_no,ap_mode_of_payment,ap_advance_payment) values 
('PTGeraldM.R.I.Chi0012','2020-04-23','Fever','Retrospective diagnosis','Dr111','Reena','016','Cash','Yes');
insert into admitpatient (ap_ID,ap_DOadmission,ap_initial_condition,ap_diagnosis,ap_did_no,ap_attendant_name,ap_room_no,ap_mode_of_payment,ap_advance_payment) values 
('PTJasonNeurologyLos0013','2020-02-03','Loss of smell','Etiology (medicine)','Dr112','Tawil','045','Cheque','Pending');
insert into admitpatient (ap_ID,ap_DOadmission,ap_initial_condition,ap_diagnosis,ap_did_no,ap_attendant_name,ap_room_no,ap_mode_of_payment,ap_advance_payment) values 
('PTKhalidOperation TheaterNew0014','2020-01-13','Diarehha','Nosology','Dr113','Kristeen','009','Cash','Yes');
insert into admitpatient (ap_ID,ap_DOadmission,ap_initial_condition,ap_diagnosis,ap_did_no,ap_attendant_name,ap_room_no,ap_mode_of_payment,ap_advance_payment) values 
('PTLeonardoOrthopedicBir0015','2020-01-11','Dry Cough','Prognosis','Dr114','Jenelle','001','Cheque','Pending');



insert into signs_symptoms (s_s_PID,s_s_DryCough,s_s_Fever,s_s_ChestPain,s_s_Shortness_of_breath,s_s_Fatigue,s_s_Vomiting,s_s_Headace,s_s_Loss_of_smell,s_s_Loss_of_taste,s_s_Diarrhea) values
('PTAhmedAnestheticsSea001',1,0,0,0,0,1,0,0,0,0);
insert into signs_symptoms (s_s_PID,s_s_DryCough,s_s_Fever,s_s_ChestPain,s_s_Shortness_of_breath,s_s_Fatigue,s_s_Vomiting,s_s_Headace,s_s_Loss_of_smell,s_s_Loss_of_taste,s_s_Diarrhea) values
('PTAmandaAnesthetics Fo002',1,0,0,1,0,1,0,0,1,0);
insert into signs_symptoms (s_s_PID,s_s_DryCough,s_s_Fever,s_s_ChestPain,s_s_Shortness_of_breath,s_s_Fatigue,s_s_Vomiting,s_s_Headace,s_s_Loss_of_smell,s_s_Loss_of_taste,s_s_Diarrhea) values
('PTAlinaBlood BankSea003',1,0,0,0,0,0,0,0,0,1);
insert into signs_symptoms (s_s_PID,s_s_DryCough,s_s_Fever,s_s_ChestPain,s_s_Shortness_of_breath,s_s_Fatigue,s_s_Vomiting,s_s_Headace,s_s_Loss_of_smell,s_s_Loss_of_taste,s_s_Diarrhea) values
('PTAlfredCancer DepartmentAus004',1,0,0,0,0,0,0,0,1,0);
insert into signs_symptoms (s_s_PID,s_s_DryCough,s_s_Fever,s_s_ChestPain,s_s_Shortness_of_breath,s_s_Fatigue,s_s_Vomiting,s_s_Headace,s_s_Loss_of_smell,s_s_Loss_of_taste,s_s_Diarrhea) values
('PTBruceCorpseSan005',0,0,1,0,0,1,0,1,0,0);
insert into signs_symptoms (s_s_PID,s_s_DryCough,s_s_Fever,s_s_ChestPain,s_s_Shortness_of_breath,s_s_Fatigue,s_s_Vomiting,s_s_Headace,s_s_Loss_of_smell,s_s_Loss_of_taste,s_s_Diarrhea) values
('PTBallackCOVID-19 Isolation WardDal006',0,0,1,0,0,1,0,0,0,0);
insert into signs_symptoms (s_s_PID,s_s_DryCough,s_s_Fever,s_s_ChestPain,s_s_Shortness_of_breath,s_s_Fatigue,s_s_Vomiting,s_s_Headace,s_s_Loss_of_smell,s_s_Loss_of_taste,s_s_Diarrhea) values
('PTCarrickDentalSan007',0,1,0,0,0,1,0,0,0,0);
insert into signs_symptoms (s_s_PID,s_s_DryCough,s_s_Fever,s_s_ChestPain,s_s_Shortness_of_breath,s_s_Fatigue,s_s_Vomiting,s_s_Headace,s_s_Loss_of_smell,s_s_Loss_of_taste,s_s_Diarrhea) values
('PTCrosswellPathologySan008',0,0,0,0,0,1,0,1,1,0);
insert into signs_symptoms (s_s_PID,s_s_DryCough,s_s_Fever,s_s_ChestPain,s_s_Shortness_of_breath,s_s_Fatigue,s_s_Vomiting,s_s_Headace,s_s_Loss_of_smell,s_s_Loss_of_taste,s_s_Diarrhea) values
('PTDonaldEmergencyPhi009',1,0,1,0,1,1,0,0,1,0);
insert into signs_symptoms (s_s_PID,s_s_DryCough,s_s_Fever,s_s_ChestPain,s_s_Shortness_of_breath,s_s_Fatigue,s_s_Vomiting,s_s_Headace,s_s_Loss_of_smell,s_s_Loss_of_taste,s_s_Diarrhea) values
('PTEpsteinI.C.U.Pho0010',1,0,0,0,0,0,0,0,0,1);
insert into signs_symptoms (s_s_PID,s_s_DryCough,s_s_Fever,s_s_ChestPain,s_s_Shortness_of_breath,s_s_Fatigue,s_s_Vomiting,s_s_Headace,s_s_Loss_of_smell,s_s_Loss_of_taste,s_s_Diarrhea) values
('PTFionaLaboratoryHou0011',1,0,0,0,0,0,0,1,0,0);
insert into signs_symptoms (s_s_PID,s_s_DryCough,s_s_Fever,s_s_ChestPain,s_s_Shortness_of_breath,s_s_Fatigue,s_s_Vomiting,s_s_Headace,s_s_Loss_of_smell,s_s_Loss_of_taste,s_s_Diarrhea) values
('PTGeraldM.R.I.Chi0012',0,0,1,0,1,0,0,1,0,0);
insert into signs_symptoms (s_s_PID,s_s_DryCough,s_s_Fever,s_s_ChestPain,s_s_Shortness_of_breath,s_s_Fatigue,s_s_Vomiting,s_s_Headace,s_s_Loss_of_smell,s_s_Loss_of_taste,s_s_Diarrhea) values
('PTJasonNeurologyLos0013',0,1,0,1,0,1,0,0,0,0);
insert into signs_symptoms (s_s_PID,s_s_DryCough,s_s_Fever,s_s_ChestPain,s_s_Shortness_of_breath,s_s_Fatigue,s_s_Vomiting,s_s_Headace,s_s_Loss_of_smell,s_s_Loss_of_taste,s_s_Diarrhea) values
('PTKhalidOperation TheaterNew0014',0,0,0,0,0,1,0,1,0,0);
insert into signs_symptoms (s_s_PID,s_s_DryCough,s_s_Fever,s_s_ChestPain,s_s_Shortness_of_breath,s_s_Fatigue,s_s_Vomiting,s_s_Headace,s_s_Loss_of_smell,s_s_Loss_of_taste,s_s_Diarrhea) values
('PTLeonardoOrthopedicBir0015',0,0,0,0,0,0,0,0,0,1);


insert into recoveredpatient (rp_PID,rp_dname,rp_DOA,rp_DOD,rp_willing_to_donate) values
('PTBallackCOVID-19 Isolation WardDal006','Ballack','2020-01-04','2020-01-14',1);
insert into recoveredpatient (rp_PID,rp_dname,rp_DOA,rp_DOD,rp_willing_to_donate) values
('PTGeraldM.R.I.Chi0012','Gerald','2020-04-23','2020-04-29',1);
insert into recoveredpatient (rp_PID,rp_dname,rp_DOA,rp_DOD,rp_willing_to_donate) values
('PTJasonNeurologyLos0013','Jason','2020-02-03','2020-02-18',0);


--------------------------------------------------------Foreign keys assignments-------------------------------------------------

alter table All_Doctors add foreign key (a_d_Depname) references Deparment(d_Depn);

alter table Registered_Doc add foreign key (r_d_ID_NO) references All_Doctors (a_d_ID_NO);

alter table patientcheckup add foreign key (pc_ID) references patient(p_ID);
alter table patientcheckup add foreign key (pc_did_no) references All_Doctors(a_d_ID_NO);

alter table recoveredpatient add foreign key (rp_PID) references patient (p_ID);  

alter table signs_symptoms add foreign key (s_s_PID) references patient(p_ID);


alter table admitpatient add foreign key (ap_ID) references patient (p_ID);
alter table admitpatient add foreign key (ap_did_no) references All_Doctors(a_d_ID_NO);





