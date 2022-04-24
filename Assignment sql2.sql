
DROP DATABASE IF EXISTS Testing_System_Assignment_2;
CREATE DATABASE Testing_System_Assignment_2;
USE Testing_System_Assignment_2;
DROP TABLE IF EXISTS Department;
CREATE TABLE Department (
DepartmentID   	TINYINT PRIMARY KEY,
DepartmentName 	VARCHAR(30) NOT NULL
);

DROP TABLE IF EXISTS Position;
CREATE TABLE Position (
positionID 		TINYINT UNSIGNED PRIMARY KEY,
positionName 	VARCHAR(30) NOT NULL
);
DROP TABLE IF EXISTS `Account`;
CREATE TABLE `Account` (
AccountID 		TINYINT UNSIGNED PRIMARY KEY,
Email 			VARCHAR(50),
Username 		VARCHAR(30) NOT NULL,
Fullname 		VARCHAR(50),
DepartmentID 	TINYINT UNSIGNED UNIQUE KEY,
PositionID 		TINYINT UNSIGNED,
CreateDate 		DATE

);
DROP TABLE IF EXISTS `Group`;
CREATE TABLE  `Group` (
GroupID 		TINYINT UNSIGNED PRIMARY KEY,
GroupName 		VARCHAR(50) NOT NULL,
CreatorID 		TINYINT UNSIGNED NOT NULL,
CreateDate 		DATE

);
DROP TABLE IF EXISTS GroupAccount;
CREATE TABLE GroupAccount (
GroupID 	TINYINT UNSIGNED PRIMARY KEY,
AccountID 	TINYINT UNSIGNED  UNIQUE KEY NOT NULL,
JoinDate 	DATE

);
DROP TABLE IF EXISTS TypeQuestion;
CREATE TABLE TypeQuestion(
TypeID 		TINYINT UNSIGNED PRIMARY KEY,
TypeName 	VARCHAR(50) NOT NULL
);
DROP TABLE IF EXISTS CategoryQuestion;
CREATE TABLE CategoryQuestion (
CategoryID 		TINYINT UNSIGNED PRIMARY KEY,
CategoryName 	VARCHAR(50) NOT NULL
);
DROP TABLE IF EXISTS  Question;
CREATE TABLE Question (
QuestionID 		TINYINT UNSIGNED PRIMARY KEY,
Content 		VARCHAR(50),
CategoryID 		TINYINT UNSIGNED UNIQUE KEY NOT NULL,
TypeID 			TINYINT UNSIGNED NOT NULL,
CreatorID 		TINYINT UNSIGNED UNIQUE KEY NOT NULL,
CreateDate 		DATE

);
DROP TABLE IF EXISTS Answer ;
CREATE TABLE Answer (
AnswerID 		TINYINT UNSIGNED PRIMARY KEY,
Content 		VARCHAR(50),
QuestionID  	TINYINT UNSIGNED NOT NULL,
isCorrect	 	VARCHAR(50)

);

DROP TABLE IF EXISTS Exam;
CREATE TABLE  Exam (
ExamID 		TINYINT UNSIGNED PRIMARY KEY,
`Code` 		VARCHAR(50),
Title 		VARCHAR(50),
CategoryID 	TINYINT UNSIGNED UNIQUE KEY,
Duration   	VARCHAR(30),
CreatorID 	TINYINT UNSIGNED UNIQUE KEY NOT NULL,
CreateDate 	DATE
);
DROP TABLE IF EXISTS ExamQuestion;
CREATE TABLE ExamQuestion (
ExamID 		TINYINT UNSIGNED PRIMARY KEY ,
QuestionID 	TINYINT UNSIGNED  UNIQUE KEY NOT NULL

);
-- Add data 
INSERT INTO Department(DepartmentID, DepartmentName)
VALUES		(1, 	N'kế hoạch'),
		   (2, 	N'sale'    ),
            (3,		N'kĩ thuật'),
            (4,     N'kế toán'),
            (5,		N'tai chinh');
            
INSERT INTO   Position (PositionID, PositionName)
VALUES    (1, 'Dev'),
		(2,  'Test'),
		(3,  'Scrum Master'),
		(4,  'PM');
        
 INSERT INTO  `Account` (AccountID, Email, UserName, FullName, DepartmentID, PositionID, CreateDate)
 
 VALUES  (1, 'a@gmail.com', 'aA','AA', 1, 1, '2000-1-1'),
		  (2, 'b@gmail.com', 'bB','BB',2, 2, '2000-2-2'),
          (3, 'c@gmail.com', 'cC','CC', 3, 3, '2000-3-3'),
          (4, 'd@gmail.com', 'dD','DD', 4, 4, '2000-4-4'),
          (5, 'g@gmail.com', 'gG','GG', 5, 5, '2000-5-5');
          
 INSERT INTO `Group` (GroupID, GroupName, CreatorID, CreateDate)
 VALUES  (1,'td',11,'2020-2-2'),
		(2,'dk',22,'2020-3-3'),
		(3,'nn',33,'2020-4-4'),
		(4,'vh',44,'2020-5-5'),
		(5,'hh',55,'2020-6-6');
        
  INSERT INTO GroupAccount (GroupID, AccountID, JoinDate)
  VALUES  (1,11,'2020-2-2'),
         (2, 22,'2020-3-3'),
		(3, 33,'2020-4-4'),
		(4, 44,'2020-5-5'),
		(5, 55,'2020-6-6');
        
	INSERT INTO TypeQuestion  (TypeID, TypeName)
          
    VALUES    (1,'Essay'),
               (2,'Multiple-Choice');
     INSERT INTO   CategoryQuestion (CategoryID, CategoryName)
     VALUES (1, 'A'),
			(2,'B'),
			(3,'C'),
			(4,'C'),
			(5,'D');
            
	INSERT INTO Question (QuestionID, Content, CategoryID, TypeID, CreatorID,CreateDate)
               
      VALUES (1,'td',11,6,7,'2020-2-2'),
		    (2,'dk',22,8,9,'2020-3-3'),
			(3,'nn',33,5,6,'2020-4-4'),
			(4,'vh',44,2,3,'2020-5-5'),
			(5,'hh',55,7,8,'2020-6-6');
    
 INSERT INTO Answer (AnswerID ,Content,QuestionID, isCorrect)
	VALUES (1,'td',11,'yes'),
		    (2,'dk',22,'yes'),
			(3,'nn',33,'yes'),
			(4,'vh',44,'no'),
			(5,'hh',55,'no');
INSERT INTO Exam    (ExamID, `Code`, Title, CategoryID, Duration, CreatorID, CreateDate) 	
            
 VALUES (1,'td','f',11,'dd',3,'2020-2-2'),
		(2,'dk','g',22,'ff',4,'2020-3-3'),
		(3,'nn','x',33,'vv',5,'2020-4-4'),
		(4,'vh','c',44,'xx',6,'2020-5-5'),
		(5,'hh','u',55,'ww',7,'2020-6-6');  
 INSERT INTO  ExamQuestion ( ExamID, QuestionID)
 VALUES (1,11),
		(2,22),
		(3,33),
		(4,44),
		(5,55);