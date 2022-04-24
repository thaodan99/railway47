CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;
CREATE TABLE Department (
DepartmentID int,
DepartmentName varchar(50)
);


CREATE TABLE Position (
positionID varchar(50),
positionName varchar(50)
);
CREATE TABLE `Account` (
AccountID varchar(50),
Email varchar(50),
Username varchar(50),
Fullname varchar(50),
DepartmentID varchar(50),
PositionID varchar(50),
CreateDate date
);

CREATE TABLE  `Group` (
GroupID varchar(50),
GroupName varchar(50),
CreattorID varchar(50),
CreateDate date
);
CREATE TABLE GroupAccount (
GroupID varchar(50),
AccountID int,
JoinDate date
);

CREATE TABLE TypeQuestion (
TypeID varchar(50),
TypeName varchar(50)
);

CREATE TABLE CategoryQuestion (
CategoryID varchar(50),
CategoryName varchar(50)
);

CREATE TABLE Question (
QuestionID varchar(50),
Content varchar(50),
CategoryID varchar(50),
TypeID varchar(50),
CreatorID varchar(50),
CreateDate date
);

CREATE TABLE Answer (
AnswerID varchar(50),
Content varchar(50),
QuestionID  varchar(50),
isCorrect varchar(50)
);
CREATE TABLE  Exem (
ExamID varchar(50),
Code varchar(50),
Title varchar(50),
CategoryID varchar(50),
Duration int,
CreatorID varchar(50),
CreareDate date
);


CREATE TABLE ExamQuestion (
ExamID varchar (50),
QuestionID varchar(50)
);


