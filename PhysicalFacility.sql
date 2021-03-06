USE [master]
GO
/****** Object:  Database [PhysicalFacilitiesDB]    Script Date: 10/14/2015 8:03:10 PM ******/
CREATE DATABASE [PhysicalFacilitiesDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PhysicalFacilitiesDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\PhysicalFacilitiesDB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PhysicalFacilitiesDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\PhysicalFacilitiesDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PhysicalFacilitiesDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET  MULTI_USER 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [PhysicalFacilitiesDB]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 10/14/2015 8:03:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Application](
	[AppID] [varchar](50) NOT NULL,
	[ASubject] [varchar](50) NULL,
	[OrgName] [varchar](50) NULL,
	[AppDetails] [varchar](500) NULL,
	[Logistic] [varchar](500) NULL,
	[FaciID] [varchar](50) NOT NULL,
	[TimeSlot] [varchar](50) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Status] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[BookingStatus] [varchar](50) NULL,
	[ProcessDate] [date] NULL,
	[Reason] [varchar](500) NULL,
 CONSTRAINT [PK_Application_1] PRIMARY KEY CLUSTERED 
(
	[AppID] ASC,
	[FaciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 10/14/2015 8:03:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Booking](
	[BookID] [varchar](50) NOT NULL,
	[AppID] [varchar](50) NULL,
	[FaciID] [varchar](50) NULL,
	[TimeSlot] [varchar](50) NULL,
	[BookDate] [date] NULL,
	[BookStatus] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Facilities]    Script Date: 10/14/2015 8:03:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Facilities](
	[FaciID] [varchar](50) NOT NULL,
	[Category] [varchar](50) NULL,
	[CatName] [varchar](50) NULL,
	[CatDetails] [varchar](500) NULL,
	[Act_Price] [float] NULL,
	[Disc_Price] [float] NULL,
 CONSTRAINT [PK_Facilities] PRIMARY KEY CLUSTERED 
(
	[FaciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login]    Script Date: 10/14/2015 8:03:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[UserID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[Application_Det]    Script Date: 10/14/2015 8:03:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Application_Det]
AS
SELECT        dbo.Application.AppID, dbo.Application.ASubject, dbo.Application.AppDetails, dbo.Application.OrgName, dbo.Application.Logistic, dbo.Application.TimeSlot, dbo.Application.StartDate, dbo.Application.EndDate, 
                         dbo.Application.Status, dbo.Facilities.FaciID, dbo.Facilities.Category, dbo.Facilities.CatName, dbo.Facilities.CatDetails, dbo.Facilities.Act_Price, dbo.Facilities.Disc_Price, dbo.Application.UserName, 
                         dbo.Application.BookingStatus, dbo.Application.ProcessDate, dbo.Application.Reason
FROM            dbo.Application INNER JOIN
                         dbo.Facilities ON dbo.Application.FaciID = dbo.Facilities.FaciID

GO
/****** Object:  View [dbo].[Booking_Det]    Script Date: 10/14/2015 8:03:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Booking_Det]
AS
SELECT        dbo.Facilities.FaciID, dbo.Facilities.CatName, dbo.Facilities.Category, dbo.Facilities.CatDetails, dbo.Facilities.Act_Price, dbo.Facilities.Disc_Price, dbo.Application.StartDate, dbo.Application.EndDate, 
                         dbo.Application.ASubject, dbo.Application.AppID, dbo.Application.TimeSlot, dbo.Booking.BookID, dbo.Booking.BookDate, dbo.Booking.BookStatus, dbo.Application.OrgName, dbo.Application.AppDetails, 
                         dbo.Application.Status, dbo.Application.Logistic, dbo.Application.UserName, dbo.Application.BookingStatus, dbo.Application.ProcessDate, dbo.Application.Reason
FROM            dbo.Application INNER JOIN
                         dbo.Booking ON dbo.Application.AppID = dbo.Booking.AppID INNER JOIN
                         dbo.Facilities ON dbo.Application.FaciID = dbo.Facilities.FaciID

GO
/****** Object:  View [dbo].[countApp]    Script Date: 10/14/2015 8:03:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[countApp]
AS
SELECT DISTINCT AppID
FROM            dbo.Application
WHERE        (Status = 'New')







GO
INSERT [dbo].[Application] ([AppID], [ASubject], [OrgName], [AppDetails], [Logistic], [FaciID], [TimeSlot], [StartDate], [EndDate], [Status], [UserName], [BookingStatus], [ProcessDate], [Reason]) VALUES (N'App1001', N'FTFL foundation Training', N'BCC', N'Technical skill & Soft skill', N'AC,Multimedia projector', N'A1001', N'Day', CAST(0x423A0B00 AS Date), CAST(0x9B3A0B00 AS Date), N'Approved', N'Nisha', N'Booked', CAST(0x8B3A0B00 AS Date), N'The date is reasonable .')
INSERT [dbo].[Application] ([AppID], [ASubject], [OrgName], [AppDetails], [Logistic], [FaciID], [TimeSlot], [StartDate], [EndDate], [Status], [UserName], [BookingStatus], [ProcessDate], [Reason]) VALUES (N'App1001', N'FTFL Foundation', N'BCC', N'echnical skill & soft skill', N'AC,Multimedia projector', N'C1002', N'Evening', CAST(0xC8390B00 AS Date), CAST(0x223A0B00 AS Date), N'Approved', N'Nisha', N'Booked', CAST(0x8B3A0B00 AS Date), N'The date is reasonable .')
INSERT [dbo].[Application] ([AppID], [ASubject], [OrgName], [AppDetails], [Logistic], [FaciID], [TimeSlot], [StartDate], [EndDate], [Status], [UserName], [BookingStatus], [ProcessDate], [Reason]) VALUES (N'App1001', N'FTFL Foundation Training', N'BCC', N'Technical skill & Soft skill', N'AC, Multimedia..', N'L1001', N'Morning', CAST(0x6E390B00 AS Date), CAST(0xC6390B00 AS Date), N'Approved', N'Nisha', N'Booked', CAST(0x8B3A0B00 AS Date), N'The date is reasonable .')
INSERT [dbo].[Application] ([AppID], [ASubject], [OrgName], [AppDetails], [Logistic], [FaciID], [TimeSlot], [StartDate], [EndDate], [Status], [UserName], [BookingStatus], [ProcessDate], [Reason]) VALUES (N'App1002', N'BCS Health', N'BPSC', N'BCS cader who are selected as <edical officer are going to give training.. ', N'AC,Multimedia projector,chair,table etc', N'A1002', N'Day', CAST(0x8D390B00 AS Date), CAST(0xC5390B00 AS Date), N'Approved', N'Nisha', N'Booked', CAST(0x8B3A0B00 AS Date), N'The date is reasonable .')
INSERT [dbo].[Application] ([AppID], [ASubject], [OrgName], [AppDetails], [Logistic], [FaciID], [TimeSlot], [StartDate], [EndDate], [Status], [UserName], [BookingStatus], [ProcessDate], [Reason]) VALUES (N'App1002', N'BCS Health ', N'BPSC', N'Bcs cader who are selected as Madical officer  are going to give training', N'AC,Multimedia....', N'C1002', N'evening', CAST(0x073A0B00 AS Date), CAST(0x113A0B00 AS Date), N'2015-06', NULL, N'Booked', NULL, NULL)
INSERT [dbo].[Application] ([AppID], [ASubject], [OrgName], [AppDetails], [Logistic], [FaciID], [TimeSlot], [StartDate], [EndDate], [Status], [UserName], [BookingStatus], [ProcessDate], [Reason]) VALUES (N'App1002', N'BCS Health', N'BPSC', N'BCS cader who are selected as Medical officer are going to give training...', N'AC,Multimedia Projector...', N'L1002', N'Morning', CAST(0xCB390B00 AS Date), CAST(0x033A0B00 AS Date), N'Approved', N'Nisha', N'Booked', CAST(0x8B3A0B00 AS Date), N'jfhjghjhjkj')
INSERT [dbo].[Booking] ([BookID], [AppID], [FaciID], [TimeSlot], [BookDate], [BookStatus], [UserName]) VALUES (N' ', N'App1001', NULL, N'Day', CAST(0x233A0B00 AS Date), N'Booked', NULL)
INSERT [dbo].[Booking] ([BookID], [AppID], [FaciID], [TimeSlot], [BookDate], [BookStatus], [UserName]) VALUES (N'B177193', N'App1001', N'A1001', N'Day', CAST(0x8B3A0B00 AS Date), N'Booked', N'Nisha')
INSERT [dbo].[Booking] ([BookID], [AppID], [FaciID], [TimeSlot], [BookDate], [BookStatus], [UserName]) VALUES (N'B945965', N'App1002', N'&nbsp;', N'Auditorium2', CAST(0x8C3A0B00 AS Date), N'Booked', N'Nisha')
INSERT [dbo].[Booking] ([BookID], [AppID], [FaciID], [TimeSlot], [BookDate], [BookStatus], [UserName]) VALUES (N'Book1002', N'App1002', NULL, N'Morning', CAST(0x423A0B00 AS Date), N'Booked', NULL)
INSERT [dbo].[Booking] ([BookID], [AppID], [FaciID], [TimeSlot], [BookDate], [BookStatus], [UserName]) VALUES (N'Book1003', N'App1003', NULL, N'Evening', CAST(0x643A0B00 AS Date), N'Booked', NULL)
INSERT [dbo].[Booking] ([BookID], [AppID], [FaciID], [TimeSlot], [BookDate], [BookStatus], [UserName]) VALUES (N'Book1004', N'App1005', NULL, N'Morning', CAST(0xC3390B00 AS Date), N'Booked', NULL)
INSERT [dbo].[Booking] ([BookID], [AppID], [FaciID], [TimeSlot], [BookDate], [BookStatus], [UserName]) VALUES (N'Book1005', N'App1006', NULL, N'Day', CAST(0x7F390B00 AS Date), N'Booked', NULL)
INSERT [dbo].[Facilities] ([FaciID], [Category], [CatName], [CatDetails], [Act_Price], [Disc_Price]) VALUES (N'A1001', N'Auditorium', N'Auditorium1', N'AC,multimedia,stage are there.', 300, 250)
INSERT [dbo].[Facilities] ([FaciID], [Category], [CatName], [CatDetails], [Act_Price], [Disc_Price]) VALUES (N'A1002', N'Auditorium', N'Auditorium2', N'AC,multimedia,stage are there.', 300, 200)
INSERT [dbo].[Facilities] ([FaciID], [Category], [CatName], [CatDetails], [Act_Price], [Disc_Price]) VALUES (N'C1001', N'Class', N'Class2', N'chair,table,multimedia ect are there...', 400, 300)
INSERT [dbo].[Facilities] ([FaciID], [Category], [CatName], [CatDetails], [Act_Price], [Disc_Price]) VALUES (N'C1002', N'Class', N'Class1', N'chair,table,multimedia etc are there.', 250, 200)
INSERT [dbo].[Facilities] ([FaciID], [Category], [CatName], [CatDetails], [Act_Price], [Disc_Price]) VALUES (N'L1001', N'Lab', N'Mannan Hall', N'AC,Multimedia,table,soundbox...etc', 450, 300)
INSERT [dbo].[Facilities] ([FaciID], [Category], [CatName], [CatDetails], [Act_Price], [Disc_Price]) VALUES (N'L1002', N'Lab', N'Muyeed Hall', N'AC,chair,table,multimedia...', 500, 350)
INSERT [dbo].[Facilities] ([FaciID], [Category], [CatName], [CatDetails], [Act_Price], [Disc_Price]) VALUES (N'L1003', N'Lab', N'IT Hall', N'AC,multimedia,wifi etc are there.', 300, 250)
INSERT [dbo].[Login] ([UserID], [Name], [Type], [Password]) VALUES (N'', N'', N'', NULL)
INSERT [dbo].[Login] ([UserID], [Name], [Type], [Password]) VALUES (N'anika1234', N'Anika', N'TO', N'1234')
INSERT [dbo].[Login] ([UserID], [Name], [Type], [Password]) VALUES (N'nisha2807', N'Nisha', N'Admin', N'admin')
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Application"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 10
         End
         Begin Table = "Facilities"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 20
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Application_Det'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Application_Det'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[9] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Application"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 211
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "Booking"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 187
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Facilities"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 182
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 17
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Booking_Det'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Booking_Det'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Application"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'countApp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'countApp'
GO
USE [master]
GO
ALTER DATABASE [PhysicalFacilitiesDB] SET  READ_WRITE 
GO
