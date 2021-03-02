--Name: Dmitry Landy
--File:  BTDB.sql
--Date: 2/21/2021
-----------------------
use BugTrackerDB;

-- Production Database tables

drop table if exists demo.Users;
go
create table dbo.Users
(
	UserID int primary key identity(1,1),
	FirstName varchar(50) not null,
	LastName varchar(50) not null,
	GroupId int null,
	DateJoined date not null,
	roleID int not null
)

drop table if exists dbo.GroupAdmins;
go
create table dbo.GroupAdmins
(
	GroupAdminID int primary key identity(1,1),
	UserID int references dbo.Users(UserID)
)


drop table if exists dbo.Groups;
go
create table dbo.Groups
(
	GroupID int primary Key identity(1,1),
	GroupAdminID int references dbo.GroupAdmins(GroupAdminID),
	dateCreated date not null,
	numUsers int not null
)

drop table if exists dbo.Projects;
go
create table dbo.Projects
(
	ProjectID int primary key identity(1,1),
	GroupAdminID int references dbo.GroupAdmins(GroupAdminID),
	ProjectDate date not null,
	numTickets int not null
)


drop table if exists dbo.TroubleTickets;
go
create table dbo.TroubleTickets
(
	TicketID int primary key identity(1,1),
	UserID int references dbo.Users(UserID),
	TicketDescription varchar(1000) not null,
	ProjectID int references dbo.Projects(ProjectID),
	TicketDate date not null
)



drop table if exists dbo.History;
go
create table dbo.History
(
	UserID int primary key references dbo.Users(UserID),
	dateOfAction date not null
)

drop table if exists dbo.UserCredentials;
go
create table dbo.UserCredentials
(
	UserID int references dbo.Users(UserID),
	passwordHash varchar(max) not null,
	email varchar(100) null
)

------------------------------------
-- DEMO Database tables
------------------------------------

drop table if exists dbo.DUsers;
go
create table dbo.DUsers
(
	UserID int primary key identity(1,1),
	FirstName varchar(50) not null,
	LastName varchar(50) not null,
	GroupId int null,
	DateJoined date not null,
	roleID int not null
)

drop table if exists dbo.DGroupAdmins;
go
create table dbo.DGroupAdmins
(
	GroupAdminID int primary key identity(1,1),
	UserID int references dbo.DUsers(UserID)
)


drop table if exists dbo.DGroups;
go
create table dbo.DGroups
(
	GroupID int primary Key identity(1,1),
	GroupAdminID int references dbo.DGroupAdmins(GroupAdminID),
	dateCreated date not null,
	numUsers int not null
)

drop table if exists dbo.DProjects;
go
create table dbo.DProjects
(
	ProjectID int primary key identity(1,1),
	GroupAdminID int references dbo.DGroupAdmins(GroupAdminID),
	ProjectDate date not null,
	numTickets int not null
)


drop table if exists dbo.DTroubleTickets;
go
create table dbo.DTroubleTickets
(
	TicketID int primary key identity(1,1),
	UserID int references dbo.DUsers(UserID),
	TicketDescription varchar(1000) not null,
	ProjectID int references dbo.DProjects(ProjectID),
	TicketDate date not null
)



drop table if exists dbo.DHistory;
go
create table dbo.DHistory
(
	UserID int primary key references dbo.DUsers(UserID),
	dateOfAction date not null
)

drop table if exists dbo.DUserCredentials;
go
create table dbo.DUserCredentials
(
	UserID int references dbo.DUsers(UserID),
	passwordHash varchar(max) not null,
	email varchar(100) null
)