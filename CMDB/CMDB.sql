USE [master]
GO
/****** Object:  Database [CMDB]    Script Date: 10/03/2015 19:00:06 ******/
CREATE DATABASE [CMDB] ON  PRIMARY 
( NAME = N'CMDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\CMDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CMDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\CMDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 COLLATE Japanese_CI_AS
GO
ALTER DATABASE [CMDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CMDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CMDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CMDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CMDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CMDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CMDB] SET ARITHABORT OFF
GO
ALTER DATABASE [CMDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [CMDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CMDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CMDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CMDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CMDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CMDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CMDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CMDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CMDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CMDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [CMDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CMDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CMDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CMDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CMDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CMDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CMDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CMDB] SET  READ_WRITE
GO
ALTER DATABASE [CMDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [CMDB] SET  MULTI_USER
GO
ALTER DATABASE [CMDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CMDB] SET DB_CHAINING OFF
GO
USE [CMDB]
GO
/****** Object:  User [cmdb]    Script Date: 10/03/2015 19:00:06 ******/
CREATE USER [cmdb] FOR LOGIN [cmdb] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[ソフトウェアMST]    Script Date: 10/03/2015 19:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ソフトウェアMST](
	[ソフトウェアID] [int] IDENTITY(1,1) NOT NULL,
	[ソフトウェア名] [nvarchar](50) COLLATE Japanese_CI_AS NOT NULL,
	[登録日時] [datetime] NOT NULL,
	[登録者] [nvarchar](50) COLLATE Japanese_CI_AS NULL,
 CONSTRAINT [PK_ソフトウェアMST] PRIMARY KEY CLUSTERED 
(
	[ソフトウェアID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[サーバー管理者MST]    Script Date: 10/03/2015 19:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[サーバー管理者MST](
	[サーバー管理者ID] [int] IDENTITY(1,1) NOT NULL,
	[サーバー管理者名] [nvarchar](50) COLLATE Japanese_CI_AS NOT NULL,
	[登録日時] [datetime] NOT NULL,
	[登録者] [nvarchar](50) COLLATE Japanese_CI_AS NULL,
 CONSTRAINT [PK_サーバー管理者MST] PRIMARY KEY CLUSTERED 
(
	[サーバー管理者ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[担当者MST]    Script Date: 10/03/2015 19:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[担当者MST](
	[担当者ID] [int] IDENTITY(1,1) NOT NULL,
	[担当者名] [nvarchar](50) COLLATE Japanese_CI_AS NOT NULL,
	[登録日時] [datetime] NOT NULL,
	[登録者] [nvarchar](50) COLLATE Japanese_CI_AS NULL,
 CONSTRAINT [PK_担当者MST] PRIMARY KEY CLUSTERED 
(
	[担当者ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[顧客MST]    Script Date: 10/03/2015 19:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[顧客MST](
	[顧客ID] [int] IDENTITY(1,1) NOT NULL,
	[顧客名] [nvarchar](50) COLLATE Japanese_CI_AS NOT NULL,
	[登録日時] [datetime] NOT NULL,
	[登録者] [nvarchar](50) COLLATE Japanese_CI_AS NULL,
 CONSTRAINT [PK_顧客MST] PRIMARY KEY CLUSTERED 
(
	[顧客ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ソフトウェアバージョンMST]    Script Date: 10/03/2015 19:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ソフトウェアバージョンMST](
	[ソフトウェアバージョンID] [int] IDENTITY(1,1) NOT NULL,
	[ソフトウェアID] [int] NOT NULL,
	[バージョン] [nvarchar](50) COLLATE Japanese_CI_AS NOT NULL,
	[登録日時] [datetime] NOT NULL,
	[登録者] [nvarchar](50) COLLATE Japanese_CI_AS NULL,
 CONSTRAINT [PK_ソフトウェアバージョンMST] PRIMARY KEY CLUSTERED 
(
	[ソフトウェアバージョンID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FK_ソフトウェアバージョンMST_ソフトウェアMST] ON [dbo].[ソフトウェアバージョンMST] 
(
	[ソフトウェアID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JOBMST]    Script Date: 10/03/2015 19:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JOBMST](
	[JOBID] [int] IDENTITY(1,1) NOT NULL,
	[JOB名] [nvarchar](50) COLLATE Japanese_CI_AS NOT NULL,
	[顧客ID] [int] NOT NULL,
	[登録日時] [datetime] NOT NULL,
	[登録者] [nvarchar](50) COLLATE Japanese_CI_AS NULL,
 CONSTRAINT [PK_JOBMST] PRIMARY KEY CLUSTERED 
(
	[JOBID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FK_JOBMST_顧客MST] ON [dbo].[JOBMST] 
(
	[顧客ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[サーバーMST]    Script Date: 10/03/2015 19:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[サーバーMST](
	[サーバーID] [int] IDENTITY(1,1) NOT NULL,
	[サーバー名] [nvarchar](50) COLLATE Japanese_CI_AS NOT NULL,
	[サーバー管理者ID] [int] NOT NULL,
	[登録日時] [datetime] NOT NULL,
	[登録者] [nvarchar](50) COLLATE Japanese_CI_AS NULL,
 CONSTRAINT [PK_サーバーMST] PRIMARY KEY CLUSTERED 
(
	[サーバーID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FK_サーバーMST_サーバー管理者MST] ON [dbo].[サーバーMST] 
(
	[サーバー管理者ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[サーバー_ソフトウェアバージョンREL]    Script Date: 10/03/2015 19:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[サーバー_ソフトウェアバージョンREL](
	[サーバーソフトウェアバージョンID] [int] IDENTITY(1,1) NOT NULL,
	[サーバーID] [int] NOT NULL,
	[ソフトウェアバージョンID] [int] NOT NULL,
	[登録日時] [datetime] NOT NULL,
	[登録者] [nchar](50) COLLATE Japanese_CI_AS NULL,
 CONSTRAINT [PK_サーバー_ソフトウェアバージョンREL] PRIMARY KEY CLUSTERED 
(
	[サーバーソフトウェアバージョンID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FK_サーバー_ソフトウェアバージョンREL_サーバーMST] ON [dbo].[サーバー_ソフトウェアバージョンREL] 
(
	[サーバーID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FK_サーバー_ソフトウェアバージョンREL_ソフトウェアバージョンMST] ON [dbo].[サーバー_ソフトウェアバージョンREL] 
(
	[ソフトウェアバージョンID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JOB_担当者REL]    Script Date: 10/03/2015 19:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JOB_担当者REL](
	[JOBID] [int] IDENTITY(1,1) NOT NULL,
	[担当者ID] [int] NOT NULL,
	[登録日時] [datetime] NOT NULL,
	[登録者] [nvarchar](50) COLLATE Japanese_CI_AS NULL,
 CONSTRAINT [PK_JOB_担当者REL] PRIMARY KEY CLUSTERED 
(
	[JOBID] ASC,
	[担当者ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FK_JOB_担当者REL_担当者MST] ON [dbo].[JOB_担当者REL] 
(
	[担当者ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JOB_サーバーソフトウェアバージョンREL]    Script Date: 10/03/2015 19:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JOB_サーバーソフトウェアバージョンREL](
	[JOB_サーバーソフトウェアバージョンID] [int] IDENTITY(1,1) NOT NULL,
	[JOBID] [int] NOT NULL,
	[サーバーソフトウェアバージョンID] [int] NOT NULL,
	[登録日時] [datetime] NOT NULL,
	[登録者] [nvarchar](50) COLLATE Japanese_CI_AS NULL,
 CONSTRAINT [PK_JOB_サーバーソフトウェアバージョンREL] PRIMARY KEY CLUSTERED 
(
	[JOB_サーバーソフトウェアバージョンID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FK_JOB_サーバーソフトウェアバージョンREL_JOBMST] ON [dbo].[JOB_サーバーソフトウェアバージョンREL] 
(
	[JOBID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FK_JOB_サーバーソフトウェアバージョンREL_サーバー_ソフトウェアバージョンREL] ON [dbo].[JOB_サーバーソフトウェアバージョンREL] 
(
	[サーバーソフトウェアバージョンID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Default [DF_ソフトウェアMST_登録日時]    Script Date: 10/03/2015 19:00:07 ******/
ALTER TABLE [dbo].[ソフトウェアMST] ADD  CONSTRAINT [DF_ソフトウェアMST_登録日時]  DEFAULT (getdate()) FOR [登録日時]
GO
/****** Object:  Default [DF_サーバー管理者MST_登録日時]    Script Date: 10/03/2015 19:00:07 ******/
ALTER TABLE [dbo].[サーバー管理者MST] ADD  CONSTRAINT [DF_サーバー管理者MST_登録日時]  DEFAULT (getdate()) FOR [登録日時]
GO
/****** Object:  Default [DF_担当者MST_登録日時]    Script Date: 10/03/2015 19:00:07 ******/
ALTER TABLE [dbo].[担当者MST] ADD  CONSTRAINT [DF_担当者MST_登録日時]  DEFAULT (getdate()) FOR [登録日時]
GO
/****** Object:  Default [DF_顧客MST_登録日時]    Script Date: 10/03/2015 19:00:07 ******/
ALTER TABLE [dbo].[顧客MST] ADD  CONSTRAINT [DF_顧客MST_登録日時]  DEFAULT (getdate()) FOR [登録日時]
GO
/****** Object:  Default [DF_ソフトウェアバージョンMST_登録日時]    Script Date: 10/03/2015 19:00:07 ******/
ALTER TABLE [dbo].[ソフトウェアバージョンMST] ADD  CONSTRAINT [DF_ソフトウェアバージョンMST_登録日時]  DEFAULT (getdate()) FOR [登録日時]
GO
/****** Object:  Default [DF_JOBMST_登録日時]    Script Date: 10/03/2015 19:00:07 ******/
ALTER TABLE [dbo].[JOBMST] ADD  CONSTRAINT [DF_JOBMST_登録日時]  DEFAULT (getdate()) FOR [登録日時]
GO
/****** Object:  Default [DF_サーバーMST_登録日時]    Script Date: 10/03/2015 19:00:07 ******/
ALTER TABLE [dbo].[サーバーMST] ADD  CONSTRAINT [DF_サーバーMST_登録日時]  DEFAULT (getdate()) FOR [登録日時]
GO
/****** Object:  Default [DF_サーバー_ソフトウェアバージョンREL_登録日時]    Script Date: 10/03/2015 19:00:07 ******/
ALTER TABLE [dbo].[サーバー_ソフトウェアバージョンREL] ADD  CONSTRAINT [DF_サーバー_ソフトウェアバージョンREL_登録日時]  DEFAULT (getdate()) FOR [登録日時]
GO
/****** Object:  Default [DF_JOB_担当者REL_登録日時]    Script Date: 10/03/2015 19:00:07 ******/
ALTER TABLE [dbo].[JOB_担当者REL] ADD  CONSTRAINT [DF_JOB_担当者REL_登録日時]  DEFAULT (getdate()) FOR [登録日時]
GO
/****** Object:  Default [DF_JOB_サーバーソフトウェアバージョンREL_登録日時]    Script Date: 10/03/2015 19:00:07 ******/
ALTER TABLE [dbo].[JOB_サーバーソフトウェアバージョンREL] ADD  CONSTRAINT [DF_JOB_サーバーソフトウェアバージョンREL_登録日時]  DEFAULT (getdate()) FOR [登録日時]
GO
/****** Object:  ForeignKey [FK_ソフトウェアバージョンMST_ソフトウェアMST]    Script Date: 10/03/2015 19:00:07 ******/
ALTER TABLE [dbo].[ソフトウェアバージョンMST]  WITH CHECK ADD  CONSTRAINT [FK_ソフトウェアバージョンMST_ソフトウェアMST] FOREIGN KEY([ソフトウェアID])
REFERENCES [dbo].[ソフトウェアMST] ([ソフトウェアID])
GO
ALTER TABLE [dbo].[ソフトウェアバージョンMST] CHECK CONSTRAINT [FK_ソフトウェアバージョンMST_ソフトウェアMST]
GO
/****** Object:  ForeignKey [FK_JOBMST_顧客MST]    Script Date: 10/03/2015 19:00:07 ******/
ALTER TABLE [dbo].[JOBMST]  WITH CHECK ADD  CONSTRAINT [FK_JOBMST_顧客MST] FOREIGN KEY([顧客ID])
REFERENCES [dbo].[顧客MST] ([顧客ID])
GO
ALTER TABLE [dbo].[JOBMST] CHECK CONSTRAINT [FK_JOBMST_顧客MST]
GO
/****** Object:  ForeignKey [FK_サーバーMST_サーバー管理者MST]    Script Date: 10/03/2015 19:00:07 ******/
ALTER TABLE [dbo].[サーバーMST]  WITH CHECK ADD  CONSTRAINT [FK_サーバーMST_サーバー管理者MST] FOREIGN KEY([サーバー管理者ID])
REFERENCES [dbo].[サーバー管理者MST] ([サーバー管理者ID])
GO
ALTER TABLE [dbo].[サーバーMST] CHECK CONSTRAINT [FK_サーバーMST_サーバー管理者MST]
GO
/****** Object:  ForeignKey [FK_サーバー_ソフトウェアバージョンREL_サーバーMST]    Script Date: 10/03/2015 19:00:07 ******/
ALTER TABLE [dbo].[サーバー_ソフトウェアバージョンREL]  WITH CHECK ADD  CONSTRAINT [FK_サーバー_ソフトウェアバージョンREL_サーバーMST] FOREIGN KEY([サーバーID])
REFERENCES [dbo].[サーバーMST] ([サーバーID])
GO
ALTER TABLE [dbo].[サーバー_ソフトウェアバージョンREL] CHECK CONSTRAINT [FK_サーバー_ソフトウェアバージョンREL_サーバーMST]
GO
/****** Object:  ForeignKey [FK_サーバー_ソフトウェアバージョンREL_ソフトウェアバージョンMST]    Script Date: 10/03/2015 19:00:07 ******/
ALTER TABLE [dbo].[サーバー_ソフトウェアバージョンREL]  WITH CHECK ADD  CONSTRAINT [FK_サーバー_ソフトウェアバージョンREL_ソフトウェアバージョンMST] FOREIGN KEY([ソフトウェアバージョンID])
REFERENCES [dbo].[ソフトウェアバージョンMST] ([ソフトウェアバージョンID])
GO
ALTER TABLE [dbo].[サーバー_ソフトウェアバージョンREL] CHECK CONSTRAINT [FK_サーバー_ソフトウェアバージョンREL_ソフトウェアバージョンMST]
GO
/****** Object:  ForeignKey [FK_JOB_担当者REL_JOBMST]    Script Date: 10/03/2015 19:00:07 ******/
ALTER TABLE [dbo].[JOB_担当者REL]  WITH CHECK ADD  CONSTRAINT [FK_JOB_担当者REL_JOBMST] FOREIGN KEY([JOBID])
REFERENCES [dbo].[JOBMST] ([JOBID])
GO
ALTER TABLE [dbo].[JOB_担当者REL] CHECK CONSTRAINT [FK_JOB_担当者REL_JOBMST]
GO
/****** Object:  ForeignKey [FK_JOB_担当者REL_担当者MST]    Script Date: 10/03/2015 19:00:07 ******/
ALTER TABLE [dbo].[JOB_担当者REL]  WITH CHECK ADD  CONSTRAINT [FK_JOB_担当者REL_担当者MST] FOREIGN KEY([担当者ID])
REFERENCES [dbo].[担当者MST] ([担当者ID])
GO
ALTER TABLE [dbo].[JOB_担当者REL] CHECK CONSTRAINT [FK_JOB_担当者REL_担当者MST]
GO
/****** Object:  ForeignKey [FK_JOB_サーバーソフトウェアバージョンREL_JOBMST]    Script Date: 10/03/2015 19:00:07 ******/
ALTER TABLE [dbo].[JOB_サーバーソフトウェアバージョンREL]  WITH CHECK ADD  CONSTRAINT [FK_JOB_サーバーソフトウェアバージョンREL_JOBMST] FOREIGN KEY([JOBID])
REFERENCES [dbo].[JOBMST] ([JOBID])
GO
ALTER TABLE [dbo].[JOB_サーバーソフトウェアバージョンREL] CHECK CONSTRAINT [FK_JOB_サーバーソフトウェアバージョンREL_JOBMST]
GO
/****** Object:  ForeignKey [FK_JOB_サーバーソフトウェアバージョンREL_サーバー_ソフトウェアバージョンREL]    Script Date: 10/03/2015 19:00:07 ******/
ALTER TABLE [dbo].[JOB_サーバーソフトウェアバージョンREL]  WITH CHECK ADD  CONSTRAINT [FK_JOB_サーバーソフトウェアバージョンREL_サーバー_ソフトウェアバージョンREL] FOREIGN KEY([サーバーソフトウェアバージョンID])
REFERENCES [dbo].[サーバー_ソフトウェアバージョンREL] ([サーバーソフトウェアバージョンID])
GO
ALTER TABLE [dbo].[JOB_サーバーソフトウェアバージョンREL] CHECK CONSTRAINT [FK_JOB_サーバーソフトウェアバージョンREL_サーバー_ソフトウェアバージョンREL]
GO
