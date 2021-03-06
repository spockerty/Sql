
--USE [GradingSystemDB]
GO
/****** Object:  Database [GradingSystemDB]    Script Date: 07/24/2017 21:21:23 ******/
--CREATE DATABASE [GradingSystemDB]
( NAME = N'GradingSystemDB', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.PAUL\MSSQL\DATA\GradingSystemDB.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GradingSystemDB_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.PAUL\MSSQL\DATA\GradingSystemDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GradingSystemDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GradingSystemDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GradingSystemDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [GradingSystemDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [GradingSystemDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [GradingSystemDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [GradingSystemDB] SET ARITHABORT OFF
GO
ALTER DATABASE [GradingSystemDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [GradingSystemDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [GradingSystemDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [GradingSystemDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [GradingSystemDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [GradingSystemDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [GradingSystemDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [GradingSystemDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [GradingSystemDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [GradingSystemDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [GradingSystemDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [GradingSystemDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [GradingSystemDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [GradingSystemDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [GradingSystemDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [GradingSystemDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [GradingSystemDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [GradingSystemDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [GradingSystemDB] SET  READ_WRITE
GO
ALTER DATABASE [GradingSystemDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [GradingSystemDB] SET  MULTI_USER
GO
ALTER DATABASE [GradingSystemDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [GradingSystemDB] SET DB_CHAINING OFF
GO
USE [GradingSystemDB]
GO
/****** Object:  Table [dbo].[TeachersTable]    Script Date: 07/24/2017 21:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TeachersTable](
	[TeacherID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[SubjectID] [int] NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_TeachersTable] PRIMARY KEY ([TeacherID],[SubjectId])
(
	[TeacherID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TeachersTable] ON
INSERT [dbo].[TeachersTable] ([TeacherID], [FirstName], [LastName], [SubjectID], [Username], [Password]) VALUES (35, N'Tyrone', N'Peralta', 19, N'Mcdo', N'Mcdo')
INSERT [dbo].[TeachersTable] ([TeacherID], [FirstName], [LastName], [SubjectID], [Username], [Password]) VALUES (35, N'Tyrone', N'Peralta', 20, N'Mcdo', N'Mcdo')
INSERT [dbo].[TeachersTable] ([TeacherID], [FirstName], [LastName], [SubjectID], [Username], [Password]) VALUES (36, N'Aaron', N'Vargas', 18, N'Vargas', N'Vargas')
INSERT [dbo].[TeachersTable] ([TeacherID], [FirstName], [LastName], [SubjectID], [Username], [Password]) VALUES (37, N'Nana', N'Sim', 20, N'Nana', N'Nana')
INSERT [dbo].[TeachersTable] ([TeacherID], [FirstName], [LastName], [SubjectID], [Username], [Password]) VALUES (38, N'Heubert', N'Webb', 17, N'Webb', N'Webb')
SET IDENTITY_INSERT [dbo].[TeachersTable] OFF
/****** Object:  Table [dbo].[SubjectsTable]    Script Date: 07/24/2017 21:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubjectsTable](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [varchar](500) NULL,
	[Year] [varchar](50) NULL,
 CONSTRAINT [PK_SubjectsTable] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SubjectsTable] ON
INSERT [dbo].[SubjectsTable] ([SubjectID], [SubjectName], [Year]) VALUES (17, N'ENGLISH', N'Grade 7')
INSERT [dbo].[SubjectsTable] ([SubjectID], [SubjectName], [Year]) VALUES (18, N'PHYSICS', N'Grade 9')
INSERT [dbo].[SubjectsTable] ([SubjectID], [SubjectName], [Year]) VALUES (19, N'CORLANG', N'Grade 10')
INSERT [dbo].[SubjectsTable] ([SubjectID], [SubjectName], [Year]) VALUES (20, N'FILIPINO', N'Grade 8')
SET IDENTITY_INSERT [dbo].[SubjectsTable] OFF
/****** Object:  Table [dbo].[StudentInformationTable]    Script Date: 07/24/2017 21:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentInformationTable](
	[StudentID] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
	[ParentName] [varchar](50) NULL,
	[ContactNo] [varchar](50) NULL,
	[Year] [varchar](50) NULL,
	[Section] [varchar](50) NULL,
 CONSTRAINT [PK_StudentInformationTable] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[StudentInformationTable] ([StudentID], [FirstName], [MiddleName], [LastName], [Gender], [Address], [ParentName], [ContactNo], [Year], [Section]) VALUES (N' 104-2015-1100', N'Karl Lawrence', N'Lario', N'Manarin', N'Male', N'Tanauan City, Batangas', N'Ivan Manarin', N'09063875566', N'Grade 9', N'A')
INSERT [dbo].[StudentInformationTable] ([StudentID], [FirstName], [MiddleName], [LastName], [Gender], [Address], [ParentName], [ContactNo], [Year], [Section]) VALUES (N'10000126053', N'Reginald', N'Paul', N'Llanto', N'Male', N'natatas tanauan city batangas', N'ZiiE ZcEcH', N'09085764123', N'Grade 10', N'A')
INSERT [dbo].[StudentInformationTable] ([StudentID], [FirstName], [MiddleName], [LastName], [Gender], [Address], [ParentName], [ContactNo], [Year], [Section]) VALUES (N'104-2015- 6330   ', N'Jasmine', N'Perez', N'Nones', N'Female', N'Natatas, Tanauan City,Batangas', N'Laly Nones', N'09056547789', N'Grade 8', N'A')
INSERT [dbo].[StudentInformationTable] ([StudentID], [FirstName], [MiddleName], [LastName], [Gender], [Address], [ParentName], [ContactNo], [Year], [Section]) VALUES (N'104-2015-0110', N'Paul Reginald', N'Llanto', N'Santos', N'Male', N'Wawa, Tanauan City, Batangas ', N'Rogel Santos', N'09063809955', N'Grade 10', N'A')
INSERT [dbo].[StudentInformationTable] ([StudentID], [FirstName], [MiddleName], [LastName], [Gender], [Address], [ParentName], [ContactNo], [Year], [Section]) VALUES (N'104-2015-A011', N'Von', N'Justine', N'Napalang', N'Male', N'Santo,tomas,Batangas', N'Reginald Napalng', N'09083326969', N'Grade 7', N'A')
INSERT [dbo].[StudentInformationTable] ([StudentID], [FirstName], [MiddleName], [LastName], [Gender], [Address], [ParentName], [ContactNo], [Year], [Section]) VALUES (N'104-2015-ABCD', N'Leona', N'Sona', N'Garen', N'Female', N'Demacia', N'Darius', N'09096969666', N'Grade 9', N'A')
INSERT [dbo].[StudentInformationTable] ([StudentID], [FirstName], [MiddleName], [LastName], [Gender], [Address], [ParentName], [ContactNo], [Year], [Section]) VALUES (N'104-2015-ANIV', N'Anivia', N'Lucian', N'Lux', N'Female', N'Tanauan City, Batangas', N'Warwick', N'09086365542', N'Grade 9', N'A')
INSERT [dbo].[StudentInformationTable] ([StudentID], [FirstName], [MiddleName], [LastName], [Gender], [Address], [ParentName], [ContactNo], [Year], [Section]) VALUES (N'4105156156', N'Kyle', N'lopes', N'Llanto', N'Male', N'Wawa', N'Ivan Llanto', N'1151515', N'Grade 7', N'A')
/****** Object:  Table [dbo].[GradesTable]    Script Date: 07/24/2017 21:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GradesTable](
	[StudentID] [varchar](50) NULL,
	[TeacherID] [varchar](50) NULL,
	[First] [decimal](18, 2) NULL,
	[Second] [decimal](18, 2) NULL,
	[Third] [decimal](18, 2) NULL,
	[Fourth] [decimal](18, 2) NULL,
	[Final] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'123', N'11', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'123', N'8', CAST(95.60 AS Decimal(18, 2)), CAST(85.20 AS Decimal(18, 2)), CAST(93.50 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(84.82 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'123', N'10', CAST(95.00 AS Decimal(18, 2)), CAST(76.00 AS Decimal(18, 2)), CAST(84.00 AS Decimal(18, 2)), CAST(99.00 AS Decimal(18, 2)), CAST(88.50 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'1222', N'14', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-0110', N'20', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-1234', N'21', CAST(90.00 AS Decimal(18, 2)), CAST(89.00 AS Decimal(18, 2)), CAST(99.00 AS Decimal(18, 2)), CAST(68.00 AS Decimal(18, 2)), CAST(86.50 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-1235', N'21', CAST(98.00 AS Decimal(18, 2)), CAST(78.00 AS Decimal(18, 2)), CAST(96.00 AS Decimal(18, 2)), CAST(85.00 AS Decimal(18, 2)), CAST(89.25 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-1111', N'22', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-1112', N'22', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-1114', N'22', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-1113', N'25', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-1113', N'26', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-1111', N'27', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-1112', N'27', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-1114', N'27', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-1111', N'28', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-1112', N'28', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-1114', N'28', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-6363', N'29', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-6363', N'30', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-25252-255', N'30', CAST(89.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), CAST(78.00 AS Decimal(18, 2)), CAST(84.25 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-6363', N'31', CAST(90.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), CAST(96.00 AS Decimal(18, 2)), CAST(91.50 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-25252-255', N'31', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'121', N'32', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'34', N'32', CAST(74.40 AS Decimal(18, 2)), CAST(74.40 AS Decimal(18, 2)), CAST(74.40 AS Decimal(18, 2)), CAST(74.40 AS Decimal(18, 2)), CAST(74.40 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'6969', N'24', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'121', N'34', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'34', N'34', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'4545', N'32', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'4545', N'34', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'8643', N'30', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'8643', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-0110', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N' 104-2015-1100', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-A011', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-0110', N'35', CAST(78.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), CAST(74.00 AS Decimal(18, 2)), CAST(71.75 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N' 104-2015-1100', N'36', CAST(78.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), CAST(71.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), CAST(73.50 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-A011', N'38', CAST(80.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), CAST(79.00 AS Decimal(18, 2)), CAST(86.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-ABCD', N'36', CAST(80.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), CAST(96.00 AS Decimal(18, 2)), CAST(85.00 AS Decimal(18, 2)), CAST(84.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-ANIV', N'36', CAST(74.00 AS Decimal(18, 2)), CAST(79.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), CAST(70.50 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'4105156156', N'38', CAST(70.00 AS Decimal(18, 2)), CAST(72.00 AS Decimal(18, 2)), CAST(74.00 AS Decimal(18, 2)), CAST(75.00 AS Decimal(18, 2)), CAST(72.75 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'10000126053', N'35', CAST(77.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), CAST(98.00 AS Decimal(18, 2)), CAST(88.00 AS Decimal(18, 2)), CAST(88.25 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'1222', N'17', CAST(95.00 AS Decimal(18, 2)), CAST(85.00 AS Decimal(18, 2)), CAST(78.00 AS Decimal(18, 2)), CAST(96.00 AS Decimal(18, 2)), CAST(88.50 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-0110', N'18', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-9969', N'19', CAST(78.00 AS Decimal(18, 2)), CAST(79.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), CAST(78.00 AS Decimal(18, 2)), CAST(81.25 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-1111', N'22', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-1112', N'22', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-1111', N'24', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-1112', N'24', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015-1114', N'24', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015- 6330   ', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[GradesTable] ([StudentID], [TeacherID], [First], [Second], [Third], [Fourth], [Final]) VALUES (N'104-2015- 6330   ', N'37', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
/****** Object:  Table [dbo].[AdminTable]    Script Date: 07/24/2017 21:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminTable](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_AdminTable] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AdminTable] ON
INSERT [dbo].[AdminTable] ([UserID], [Username], [Password], [Name]) VALUES (1, N'admin', N'admin', N'Administrator')
SET IDENTITY_INSERT [dbo].[AdminTable] OFF




/****** Object:  Table [dbo].[SubjectsTable]    Script Date: 07/24/2017 21:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TeacherSubjectsTable](
	[TeacherID] [int](50) NOT NULL,
	[SubjectID] [int](50) NOT NULL,
 	CONSTRAINT [PK_SubjectsTable] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [TeacherSubjectsTable] (
  [TeacherID] [int] NOT NULL,
  [SubjectID] [int] NOT NULL,
  CONSTRAINT TeacherSubject_pk PRIMARY KEY NONCLUSTERED ([TeacherID] , [SubjectID] )
)


INSERT [dbo].[TeacherSubjectsTable] ([TeacherID] , [SubjectID] ) VALUES (35,18)
INSERT [dbo].[TeacherSubjectsTable] ([TeacherID] , [SubjectID] ) VALUES (36,21)
INSERT [dbo].[TeacherSubjectsTable] ([TeacherID] , [SubjectID] ) VALUES (38,22)
INSERT [dbo].[TeacherSubjectsTable] ([TeacherID] , [SubjectID] ) VALUES (41,20)
