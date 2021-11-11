 USE FirstDb
 CREATE TABLE Users (
	Id INT  IDENTITY PRIMARY KEY,
	Name varchar(255) NOT NULL,
	Surname varchar(255) NOT NULL,
	Age INT NOT NULL,
	Adress varchar(255) NOT NULL,
	CertificateId INT REFERENCES Certificate(Id)
	
)
CREATE TABLE Course (
	Id INT  IDENTITY PRIMARY KEY,
	Name varchar(255) NOT NULL,
	Price INT NOT NULL,
	Time INT NOT NULL,
	CategoryId INT REFERENCES Category(Id)
	
)
CREATE TABLE UserCourse (
	Id INT  IDENTITY PRIMARY KEY,
	UserId INT  REFERENCES Users(Id),
	CourseId INT  REFERENCES Course(Id),
)

CREATE TABLE Category (
	[Id] INT  IDENTITY PRIMARY KEY,
	[Name] varchar(255) NOT NULL,
	
)

CREATE TABLE Certificate (
	Id INT  IDENTITY PRIMARY KEY,
	Name varchar(255) NOT NULL,
	Date varchar(255) NOT NULL,
	
)