USE [WAPH]
GO
/****** Object:  StoredProcedure [dbo].[AddStudents]    Script Date: 10/14/2014 08:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[AddEnsayoStudents]
	       @Stu_Ensayo text,
           @Stu_Status varchar(15)
AS
BEGIN

	INSERT INTO [WAPH].[dbo].[AddEnsayoStudents]
           ([Stu_Ensayo]
           ,[Stu_Status])
     VALUES
	       (@Stu_Ensayo,
            @Stu_Status)
           	
	SET NOCOUNT ON;

    -- Insert statements for procedure here

END
