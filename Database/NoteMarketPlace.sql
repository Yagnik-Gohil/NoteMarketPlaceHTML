USE [master]
GO
/****** Object:  Database [NotesMarketPlace]    Script Date: 11-02-2021 17:41:46 ******/
CREATE DATABASE [NotesMarketPlace]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NotesMarketPlace', FILENAME = N'C:\Microsoft SQL Server\MSSQL14.MSSQLSERVER01\MSSQL\DATA\NotesMarketPlace.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NotesMarketPlace_log', FILENAME = N'C:\Microsoft SQL Server\MSSQL14.MSSQLSERVER01\MSSQL\DATA\NotesMarketPlace_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [NotesMarketPlace] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NotesMarketPlace].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NotesMarketPlace] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NotesMarketPlace] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NotesMarketPlace] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NotesMarketPlace] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NotesMarketPlace] SET ARITHABORT OFF 
GO
ALTER DATABASE [NotesMarketPlace] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NotesMarketPlace] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NotesMarketPlace] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NotesMarketPlace] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NotesMarketPlace] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NotesMarketPlace] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NotesMarketPlace] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NotesMarketPlace] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NotesMarketPlace] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NotesMarketPlace] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NotesMarketPlace] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NotesMarketPlace] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NotesMarketPlace] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NotesMarketPlace] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NotesMarketPlace] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NotesMarketPlace] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NotesMarketPlace] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NotesMarketPlace] SET RECOVERY FULL 
GO
ALTER DATABASE [NotesMarketPlace] SET  MULTI_USER 
GO
ALTER DATABASE [NotesMarketPlace] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NotesMarketPlace] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NotesMarketPlace] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NotesMarketPlace] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NotesMarketPlace] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'NotesMarketPlace', N'ON'
GO
ALTER DATABASE [NotesMarketPlace] SET QUERY_STORE = OFF
GO
USE [NotesMarketPlace]
GO
/****** Object:  Table [dbo].[AdminTable]    Script Date: 11-02-2021 17:41:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminTable](
	[UID] [int] NOT NULL,
	[SecondaryEmail] [varchar](100) NULL,
	[CountryCode] [varchar](10) NOT NULL,
	[PhoneNumber] [varchar](20) NOT NULL,
	[ProfilePicture] [varbinary](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_AdminTable] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryTable]    Script Date: 11-02-2021 17:41:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryTable](
	[CategoryID] [int] NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [int] NOT NULL,
 CONSTRAINT [PK_CategoryTable] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactUsTable]    Script Date: 11-02-2021 17:41:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUsTable](
	[ID] [int] NOT NULL,
	[FullName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Subject] [varchar](100) NOT NULL,
	[Comments] [varbinary](max) NOT NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_ContactUsTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountryTable]    Script Date: 11-02-2021 17:41:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryTable](
	[CountryID] [int] NOT NULL,
	[CountryName] [varchar](20) NOT NULL,
	[CountryCode] [varchar](10) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_CountryTable] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotesAttachmentTable]    Script Date: 11-02-2021 17:41:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotesAttachmentTable](
	[ID] [int] NOT NULL,
	[NID] [int] NOT NULL,
	[FileName] [varchar](100) NOT NULL,
	[FilePath] [varchar](max) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_NotesAttachmentTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoteTable]    Script Date: 11-02-2021 17:41:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoteTable](
	[NID] [int] NOT NULL,
	[UID] [int] NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[DisplayPicture] [varbinary](max) NULL,
	[TypeID] [int] NULL,
	[NumberOfPages] [int] NULL,
	[Description] [varbinary](max) NOT NULL,
	[CountryID] [int] NULL,
	[InstituteName] [varchar](200) NULL,
	[CourseName] [varchar](100) NULL,
	[CourseCode] [varchar](100) NULL,
	[Professor] [varchar](100) NULL,
	[IsPaid] [bit] NOT NULL,
	[Price] [int] NOT NULL,
	[PreviewAttachment] [varbinary](max) NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[ActionBy] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_NoteTable] PRIMARY KEY CLUSTERED 
(
	[NID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RejectedTable]    Script Date: 11-02-2021 17:41:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RejectedTable](
	[ID] [int] NOT NULL,
	[NID] [int] NOT NULL,
	[RejectedBy] [int] NOT NULL,
	[Comments] [varchar](100) NOT NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_RejectedTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReviewTable]    Script Date: 11-02-2021 17:41:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReviewTable](
	[ID] [int] NOT NULL,
	[NID] [int] NOT NULL,
	[ReviewBy] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[Comments] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_ReviewTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleTable]    Script Date: 11-02-2021 17:41:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleTable](
	[RID] [int] NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
	[Description] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_RoleTable] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpamTable]    Script Date: 11-02-2021 17:41:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpamTable](
	[ID] [int] NOT NULL,
	[NID] [int] NOT NULL,
	[SpamBy] [int] NOT NULL,
	[Comments] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemConfigurationTable]    Script Date: 11-02-2021 17:41:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemConfigurationTable](
	[ID] [int] NOT NULL,
	[SupportEmail] [varchar](100) NOT NULL,
	[SupportPhoneNumber] [varchar](15) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Facebook] [varchar](max) NULL,
	[Twitter] [varchar](max) NULL,
	[LinkedIn] [varchar](max) NULL,
	[DefaultNoteImage] [varbinary](max) NOT NULL,
	[DefaultProfilePicture] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_SystemConfigurationTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransectionTable]    Script Date: 11-02-2021 17:41:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransectionTable](
	[TID] [int] NOT NULL,
	[NID] [int] NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Category] [varchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[BuyerID] [int] NOT NULL,
	[SellerID] [int] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_TransectionTable] PRIMARY KEY CLUSTERED 
(
	[TID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeTable]    Script Date: 11-02-2021 17:41:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeTable](
	[TypeID] [int] NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_TypeTable] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfileTable]    Script Date: 11-02-2021 17:41:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfileTable](
	[ID] [int] NOT NULL,
	[UID] [int] NOT NULL,
	[DateOfBirth] [datetime] NULL,
	[Gender] [varchar](20) NULL,
	[CountryCode] [varchar](10) NOT NULL,
	[PhoneNumber] [varchar](20) NOT NULL,
	[ProfilePicture] [varbinary](max) NULL,
	[AddressLine1] [varchar](100) NOT NULL,
	[AddressLine2] [varchar](100) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[ZipCode] [varchar](50) NOT NULL,
	[CountryID] [int] NOT NULL,
	[University] [varchar](100) NULL,
	[College] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_UserProfileTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTable]    Script Date: 11-02-2021 17:41:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTable](
	[UID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Password] [varchar](24) NOT NULL,
	[IsEmailVerified] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_UserTable] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NotesAttachmentTable]  WITH CHECK ADD  CONSTRAINT [FK_NotesAttachmentTable_NoteTable] FOREIGN KEY([NID])
REFERENCES [dbo].[NoteTable] ([NID])
GO
ALTER TABLE [dbo].[NotesAttachmentTable] CHECK CONSTRAINT [FK_NotesAttachmentTable_NoteTable]
GO
ALTER TABLE [dbo].[NotesAttachmentTable]  WITH CHECK ADD  CONSTRAINT [FK_NotesAttachmentTable_UserTable] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[UserTable] ([UID])
GO
ALTER TABLE [dbo].[NotesAttachmentTable] CHECK CONSTRAINT [FK_NotesAttachmentTable_UserTable]
GO
ALTER TABLE [dbo].[NoteTable]  WITH CHECK ADD  CONSTRAINT [FK_NoteTable_CategoryTable] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[CategoryTable] ([CategoryID])
GO
ALTER TABLE [dbo].[NoteTable] CHECK CONSTRAINT [FK_NoteTable_CategoryTable]
GO
ALTER TABLE [dbo].[NoteTable]  WITH CHECK ADD  CONSTRAINT [FK_NoteTable_CountryTable] FOREIGN KEY([CountryID])
REFERENCES [dbo].[CountryTable] ([CountryID])
GO
ALTER TABLE [dbo].[NoteTable] CHECK CONSTRAINT [FK_NoteTable_CountryTable]
GO
ALTER TABLE [dbo].[NoteTable]  WITH CHECK ADD  CONSTRAINT [FK_NoteTable_TypeTable] FOREIGN KEY([TypeID])
REFERENCES [dbo].[TypeTable] ([TypeID])
GO
ALTER TABLE [dbo].[NoteTable] CHECK CONSTRAINT [FK_NoteTable_TypeTable]
GO
ALTER TABLE [dbo].[NoteTable]  WITH CHECK ADD  CONSTRAINT [FK_NoteTable_UserTable] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[UserTable] ([UID])
GO
ALTER TABLE [dbo].[NoteTable] CHECK CONSTRAINT [FK_NoteTable_UserTable]
GO
ALTER TABLE [dbo].[NoteTable]  WITH CHECK ADD  CONSTRAINT [FK_NoteTable_UserTable1] FOREIGN KEY([UID])
REFERENCES [dbo].[UserTable] ([UID])
GO
ALTER TABLE [dbo].[NoteTable] CHECK CONSTRAINT [FK_NoteTable_UserTable1]
GO
ALTER TABLE [dbo].[RejectedTable]  WITH CHECK ADD  CONSTRAINT [FK_RejectedTable_NoteTable] FOREIGN KEY([NID])
REFERENCES [dbo].[NoteTable] ([NID])
GO
ALTER TABLE [dbo].[RejectedTable] CHECK CONSTRAINT [FK_RejectedTable_NoteTable]
GO
ALTER TABLE [dbo].[RejectedTable]  WITH CHECK ADD  CONSTRAINT [FK_RejectedTable_UserTable] FOREIGN KEY([RejectedBy])
REFERENCES [dbo].[UserTable] ([UID])
GO
ALTER TABLE [dbo].[RejectedTable] CHECK CONSTRAINT [FK_RejectedTable_UserTable]
GO
ALTER TABLE [dbo].[ReviewTable]  WITH CHECK ADD  CONSTRAINT [FK_ReviewTable_NoteTable] FOREIGN KEY([NID])
REFERENCES [dbo].[NoteTable] ([NID])
GO
ALTER TABLE [dbo].[ReviewTable] CHECK CONSTRAINT [FK_ReviewTable_NoteTable]
GO
ALTER TABLE [dbo].[ReviewTable]  WITH CHECK ADD  CONSTRAINT [FK_ReviewTable_UserTable] FOREIGN KEY([ReviewBy])
REFERENCES [dbo].[UserTable] ([UID])
GO
ALTER TABLE [dbo].[ReviewTable] CHECK CONSTRAINT [FK_ReviewTable_UserTable]
GO
ALTER TABLE [dbo].[SpamTable]  WITH CHECK ADD  CONSTRAINT [FK_Table_1_NoteTable] FOREIGN KEY([NID])
REFERENCES [dbo].[NoteTable] ([NID])
GO
ALTER TABLE [dbo].[SpamTable] CHECK CONSTRAINT [FK_Table_1_NoteTable]
GO
ALTER TABLE [dbo].[SpamTable]  WITH CHECK ADD  CONSTRAINT [FK_Table_1_UserTable] FOREIGN KEY([SpamBy])
REFERENCES [dbo].[UserTable] ([UID])
GO
ALTER TABLE [dbo].[SpamTable] CHECK CONSTRAINT [FK_Table_1_UserTable]
GO
ALTER TABLE [dbo].[TransectionTable]  WITH CHECK ADD  CONSTRAINT [FK_TransectionTable_NoteTable] FOREIGN KEY([NID])
REFERENCES [dbo].[NoteTable] ([NID])
GO
ALTER TABLE [dbo].[TransectionTable] CHECK CONSTRAINT [FK_TransectionTable_NoteTable]
GO
ALTER TABLE [dbo].[TransectionTable]  WITH CHECK ADD  CONSTRAINT [FK_TransectionTable_UserTable] FOREIGN KEY([BuyerID])
REFERENCES [dbo].[UserTable] ([UID])
GO
ALTER TABLE [dbo].[TransectionTable] CHECK CONSTRAINT [FK_TransectionTable_UserTable]
GO
ALTER TABLE [dbo].[TransectionTable]  WITH CHECK ADD  CONSTRAINT [FK_TransectionTable_UserTable1] FOREIGN KEY([SellerID])
REFERENCES [dbo].[UserTable] ([UID])
GO
ALTER TABLE [dbo].[TransectionTable] CHECK CONSTRAINT [FK_TransectionTable_UserTable1]
GO
ALTER TABLE [dbo].[UserProfileTable]  WITH CHECK ADD  CONSTRAINT [FK_UserProfileTable_CountryTable] FOREIGN KEY([CountryID])
REFERENCES [dbo].[CountryTable] ([CountryID])
GO
ALTER TABLE [dbo].[UserProfileTable] CHECK CONSTRAINT [FK_UserProfileTable_CountryTable]
GO
ALTER TABLE [dbo].[UserProfileTable]  WITH CHECK ADD  CONSTRAINT [FK_UserProfileTable_UserTable] FOREIGN KEY([UID])
REFERENCES [dbo].[UserTable] ([UID])
GO
ALTER TABLE [dbo].[UserProfileTable] CHECK CONSTRAINT [FK_UserProfileTable_UserTable]
GO
ALTER TABLE [dbo].[UserProfileTable]  WITH CHECK ADD  CONSTRAINT [FK_UserProfileTable_UserTable1] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[UserTable] ([UID])
GO
ALTER TABLE [dbo].[UserProfileTable] CHECK CONSTRAINT [FK_UserProfileTable_UserTable1]
GO
ALTER TABLE [dbo].[UserTable]  WITH CHECK ADD  CONSTRAINT [FK_UserTable_RoleTable] FOREIGN KEY([RoleID])
REFERENCES [dbo].[RoleTable] ([RID])
GO
ALTER TABLE [dbo].[UserTable] CHECK CONSTRAINT [FK_UserTable_RoleTable]
GO
ALTER TABLE [dbo].[UserTable]  WITH CHECK ADD  CONSTRAINT [FK_UserTable_UserTable] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[UserTable] ([UID])
GO
ALTER TABLE [dbo].[UserTable] CHECK CONSTRAINT [FK_UserTable_UserTable]
GO
USE [master]
GO
ALTER DATABASE [NotesMarketPlace] SET  READ_WRITE 
GO
