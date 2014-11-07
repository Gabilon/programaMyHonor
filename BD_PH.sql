USE [WAPH]
GO
/****** Object:  User [waph]    Script Date: 10/16/2014 08:46:59 ******/
CREATE USER [waph] FOR LOGIN [waph] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[UsersInRoles]    Script Date: 10/16/2014 08:46:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/16/2014 08:46:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 10/16/2014 08:46:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Students](
	[StudentName] [varchar](50) NOT NULL,
	[StudentNumber] [varchar](50) NOT NULL,
	[Stu_Gender] [varchar](10) NOT NULL,
	[Stu_Birthday] [date] NOT NULL,
	[Stu_Email] [varchar](50) NOT NULL,
	[Stu_Phone] [varchar](10) NOT NULL,
	[Stu_Direccion] [varchar](50) NOT NULL,
	[Stu_Postal] [varchar](50) NULL,
	[Stu_Department] [varchar](50) NOT NULL,
	[Stu_Year] [varchar](1) NOT NULL,
	[Stu_Igs] [varchar](4) NOT NULL,
	[Stu_Certificate] [varchar](50) NULL,
	[Stu_Authorization] [varchar](2) NOT NULL,
	[Stu_Ensayo] [text] NULL,
	[Stu_foto] [varchar](50) NULL,
	[Stu_AplicationDate] [date] NOT NULL,
	[Stu_Status] [varchar](15) NOT NULL,
 CONSTRAINT [PK_AdmRequest] PRIMARY KEY CLUSTERED 
(
	[StudentNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 10/16/2014 08:46:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Requerimientos]    Script Date: 10/16/2014 08:46:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Requerimientos](
	[Aplicacion_id] [varchar](1000) NOT NULL,
	[StudentNumber] [varchar](10) NOT NULL,
	[Apl_Ensayo] [text] NOT NULL,
	[Apl_referencia] [nchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 10/16/2014 08:46:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [nvarchar](4000) NOT NULL,
	[PropertyValueStrings] [nvarchar](4000) NOT NULL,
	[PropertyValueBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Memberships]    Script Date: 10/16/2014 08:46:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Memberships](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowsStart] [datetime] NOT NULL,
	[Comment] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AsesoresDocentes]    Script Date: 10/16/2014 08:46:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AsesoresDocentes](
	[AsesorDocente_id] [varchar](10) NOT NULL,
	[Asedoc_nombre] [varchar](50) NOT NULL,
	[Asedoc_Titulo] [varchar](12) NOT NULL,
	[Asedoc_Departamento] [varchar](50) NOT NULL,
	[Asedoc_Email] [varchar](50) NOT NULL,
	[Asedoc_Descripcion] [text] NOT NULL,
	[Asedoc_Status] [varchar](12) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Applications]    Script Date: 10/16/2014 08:46:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applications](
	[ApplicationName] [nvarchar](235) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[AddStudents]    Script Date: 10/16/2014 08:46:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddStudents]
	       @StudentName varchar(50),
           @StudentNumber varchar(50),
           @Stu_Gender varchar(10),
           @Stu_Birthday varchar(12),
           @Stu_Email varchar(50),
           @Stu_Phone varchar(10),
           @Stu_Direccion varchar(50),
           @Stu_Postal varchar (50),
           @Stu_Department varchar(50),
           @Stu_Year varchar(1),
           @Stu_Igs varchar(10),
           @Stu_Certificate varchar(50),
           @Stu_Authorization varchar(2),
           @Stu_AplicationDate date,
           @Stu_Status varchar(15)
AS
BEGIN

	INSERT INTO [WAPH].[dbo].[Students]
           ([StudentName]
           ,[StudentNumber]
           ,[Stu_Gender]
           ,[Stu_Birthday]
           ,[Stu_Email]
           ,[Stu_Phone]
           ,[Stu_Direccion]
           ,[Stu_Postal]
           ,[Stu_Department]
           ,[Stu_Year]
           ,[Stu_Igs]
           ,[Stu_Certificate]
           ,[Stu_Authorization]
           ,[Stu_AplicationDate]
           ,[Stu_Status])
     VALUES
	       (@StudentName,
           @StudentNumber,
           @Stu_Gender,
           @Stu_Birthday,
           @Stu_Email,
           @Stu_Phone,
           @Stu_Direccion,
           @Stu_Postal,
           @Stu_Department,
           @Stu_Year,
           @Stu_Igs,
           @Stu_Certificate,
           @Stu_Authorization,
           @Stu_AplicationDate,
           @Stu_Status)
           	
	SET NOCOUNT ON;

    -- Insert statements for procedure here

END
GO
/****** Object:  StoredProcedure [dbo].[AddEnsayoStudents]    Script Date: 10/16/2014 08:46:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddEnsayoStudents]
	       @StudentNumber varchar(50),
	       @Stu_Ensayo text,
           @Stu_Status varchar(15)
AS
BEGIN

	UPDATE [WAPH].[dbo].[Students]
       SET [Stu_Ensayo]= @Stu_Ensayo
           ,[Stu_Status]=@Stu_Status

     WHERE ([StudentNumber] = @StudentNumber)
           	
	SET NOCOUNT ON;

    -- Insert statements for procedure here

END
GO
/****** Object:  Default [DF_AdmRequest_Stu_Aplication]    Script Date: 10/16/2014 08:46:57 ******/
ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [DF_AdmRequest_Stu_Aplication]  DEFAULT (getdate()) FOR [Stu_AplicationDate]
GO
