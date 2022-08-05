Create Table Users
(
User_Name  varchar2(30),
User_Password varchar(30),
User_id int  primary key,
Date_Of_Birth date,
Gender varchar(30),
Phone_No number(20),
Email varchar2(30),
City varchar(30),
User_Role varchar(30)
);
insert into Users(User_Name,User_Password,User_id,Date_Of_Birth,Gender,Phone_No,Email,City,User_Role)values('Gokul','goukl@12',100,TO_DATE('2000/05/20','yyyy/mm/dd'),'Male',7497983,'sanjay@gmail.com','Theni','User');
Desc Users;
drop table Users;
select * from Users;
--------------------------------------------------
Create Table Police_Detail
(
Police_Id number(10) primary Key,
Police_Rank	varchar(30),
Police_Name varchar(30),
Mobile_No number(20),
Email  varchar(30),
DOB	date,
Station_Name varchar(30)
);
Desc Police_Detail;
drop table Police_Detail;
select * from Police_Detail;

-----------------------------------------------------------
Create Table Complaint_Details
(
Complaint_Id number(10) primary Key,
Type_Of_Complaint varchar(50),
Complaint_Describtion varchar2(255),
Registered_Station varchar(30),
Complaint_Status varchar(30),
issue_Date date,
issue_Time Varchar(30),
Police_Id number(10),
User_id int,
Foreign Key(User_id) References Users(User_id), 
Foreign Key(Police_Id) References Police_Detail(Police_Id)
);
insert into Complaint_Details(Complaint_Id,Type_Of_Complaint,Complaint_Describtion,Registered_Station,Complaint_Status,issue_Date,issue_Time,Police_Id,User_id)values(1,'Document Missing','my Document Missing in Temple','Tambaram','Pending',TO_DATE('1999/05/20','yyyy/mm/dd'),'10:00AM',1,10);

commit;
Desc Complaint_Details;
drop table Complaint_Details;
select *  from Complaint_Details;

----------------------------------------------------------------
Create Table Crime_Details
(
Suspect_Id number(20),
Crime_Location varchar(50),
Issue_Date date,
Type_Of_Offence	varchar(50),
Complaint_Id number(20),
Image varchar2(255),
Foreign Key(Suspect_Id) References Suspect_Detail(Suspect_Id),
Foreign Key(Complaint_Id) References Complaint_Details(Complaint_Id)
);

--------------------------------------------------------------------------
Desc Crime_Details;
drop table Crime_Details;
select * from  Crime_Details;
--------------------------------------------------------------------------
Create Table Suspect_Detail
(
Suspect_Id number(20) Primary Key,
Suspect_Name varchar(30),	
Suspect_Identity varchar(30),	
Gender	varchar(20),
DOB date,	
Address varchar(50)
);

-------------------------------------------------------------------------
Desc Suspect_Detail
drop table Suspect_Detail;
select * from Suspect_Detail;