--Name: Dmitry Landy
--File:  BTDB.sql
--Date: 2/21/2021
-----------------------
use BugTrackerDB;

-- Production Database tables
drop table if exists dbo.UserCredentials;
drop table if exists dbo.History;
drop table if exists dbo.TroubleTickets;
drop table if exists dbo.Projects;
drop table if exists dbo.Groups;
drop table if exists dbo.Users;


go
create table dbo.Users
(
	UserID int primary key identity(1,1),
	FirstName varchar(50) not null,
	LastName varchar(50) not null,
	GroupId int null,
	DateJoined varchar(10) not null,
	roleID bit not null
)


go
create table dbo.Groups
(
	GroupID int primary Key identity(1,1),	
	dateCreated varchar(10) not null,
	numUsers int not null
)


go
create table dbo.Projects
(
	ProjectID int primary key identity(1,1),
	ProjectName varchar(100) not null,
	ProjectDescription varchar(300),
	ProjectDate varchar(10) not null
)



go
create table dbo.TroubleTickets
(
	TicketID int primary key identity(1,1),
	UserID int references dbo.Users(UserID),
	TicketDescription varchar(1000) not null,
	ProjectID int references dbo.Projects(ProjectID),
	TicketDate varchar(10) not null
)




go
create table dbo.History
(
	UserID int primary key references dbo.Users(UserID),
	dateOfAction varchar(10) not null
)


go
create table dbo.UserCredentials
(
	UserID int references dbo.Users(UserID),
	passwordHash varchar(max) not null,
	email varchar(100) null
)
